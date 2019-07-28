class Api::V1::UsersController < ApplicationController

    def show
        @user = User.find(params[:id])
        @Countries = Country.all
    end 

    def new
        @Countries = Country.all
        @user = User.new
    end 

    def create
        @user = User.create(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to @user
        else
            flash[:errors] = @user.errors.full_messages
            redirect_to new_user_path
        end
    end

    private
    def user_params
        params.require(:user).permit(:username, :bio, :email, :location, :profile_picture, :password)
    end
end