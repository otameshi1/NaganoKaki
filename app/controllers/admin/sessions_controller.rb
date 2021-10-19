# frozen_string_literal: true

class Admin::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
    # before_action :configure_permitted_parameters, if: :devise_controller?

  # GET /resource/sign_in
  # def new
  #   super
  # end
  def after_sign_in_path_for(resource)
    admin_order_details_path
  end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # def after_sign_out_path_for(resource)
  #   root_path
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end


