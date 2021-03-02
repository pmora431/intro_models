class UsersController < ApplicationController

    def form
        @user = User.new
    end

    def create
        @user = User.create(name: params["name"], email: params["email"])
        if @user.save
            redirect_to '/users/index'
        else
            render 'form'
        end
    end

    def index
        @users = User.all
    end

end
