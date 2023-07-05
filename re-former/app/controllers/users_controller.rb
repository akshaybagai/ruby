class UsersController < ApplicationController
    def new
    end

    def create
        # @user = User.new(username: params[:username], email: params[:email], password: params[:password])
        @user = User.new(allowed_parameters)
        
        puts @user

        if @user.save
            render :new
        else
            render :new, status: :unprocessable_entity 
        end
    end

    private
    def allowed_parameters
        params.require(:user).permit(:username, :email, :password)
    end

end
