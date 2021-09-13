class UsersController < ApplicationController
    
    # skip_before_action :authorize, only: :create
    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    private

    def user_params
        params.permit(:username, :password, :password_confirmation, :img_url, :name, :birthdate, :email)
    end  
end
