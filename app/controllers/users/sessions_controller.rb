class Users::SessionsController < Devise::SessionsController

  # before_action :configure_sign_in_params, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  def create
  super
    session["user_id"] = current_user.id
  end

  # DELETE /resource/sign_out
  def destroy
    room_ids = User.find(session["user_id"]).room_ids
    User.find(session["user_id"]).rooms.destroy_all
    Room.where(id: room_ids).destroy_all
    current_user.update_attribute(:last_sign_out_at, Time.now)
    super
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
0/10