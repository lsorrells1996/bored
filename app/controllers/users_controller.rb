class UsersController < ApplicationController
    def create
        render json: User.create!(user_params), status: :created
    end

    private

    def user_params
        params.permit(:username, :password, :password_confirmation)
    end
end
