class UsersController < ApplicationController
    def create
        @user = User.create!(user_params)
        if @user.valid?
            render json: { user: User.new(@user) }, status: :created
        else
            render json: { error: 'Failed to create user.' }, status: :unprocessable_entity
        end
    end

    private

    def user_params
        params.permit(:username, :password, :password_confirmation, :img_url, :name, :birthdate, :email)
    end  
end
