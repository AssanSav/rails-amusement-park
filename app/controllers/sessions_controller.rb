class SessionsController < ApplicationController 

    def signin
        @user = User.find_by(params[:name]) 
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        end
    end

  
end