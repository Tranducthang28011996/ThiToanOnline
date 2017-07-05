class Room < ApplicationRecord
  validates :loaiphong, :tenphong, :monthi, presence: true
  has_many :rooms_users
  has_many :users, through: :rooms_users
end
