class UsersController < ApplicationController

    before_action :set_user, only: [:edit, :update, :destroy]

    def new
        @user = User.new
    end

    def create
        @user = User.create(name: params["name"], email: params["email"])
        if @user.save
            redirect_to users_index_path
        else
            render 'new'
        end
    end

    def index
        @users = User.all
    end

    def edit
    end

    def update
        if @user.update(name: params["name"], email: params["email"])
            redirect_to users_index_path
        else
            render 'edit'
        end
    end

    def destroy
        @user.destroy
        redirect_to users_index_path
    end

    private
    def set_user
        @user = User.find(params[:id])
    end

end
