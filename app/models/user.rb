class User < ApplicationRecord

  has_many :rooms_users
  has_many :rooms, through: :rooms_users
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, :omniauth_providers => [:facebook]

  def self.new_with_session(params, session)
  super.tap do |user|
    if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
      user.email = data["email"] if user.email.blank?
    end
  end
end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = 'auth.info.email'
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name   # assuming the user model has a name
      user.image = auth.info.image # assuming the user model has an image
    end
  end

  def online?
      if current_sign_in_at.present? 
        last_sign_out_at.present? ? current_sign_in_at > last_sign_out_at : true
      else
        false
      end
    end
end
