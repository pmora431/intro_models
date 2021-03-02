class UsersController < ApplicationController

    def form
    end

    def create
        @user = User.create(name: params["name"], email: params["email"])
    end

end
