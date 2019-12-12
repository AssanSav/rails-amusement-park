class UsersController < ApplicationController
    
    def home 
        @users = User.all
    end

    def new 
        @user = User.new 
    end

    def create 
        @user = User.new(user_params)
        if @user.save 
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        end
    end
    
    def show 
        redirect_if_not_logged_in?
        @user = User.find_by(id: params[:id])
        #binding.pry
    end

    private 

    def user_params 
        params.require(:user).permit(:name, :nausea, :happiness, :height, :tickets, :password)
    end

end
