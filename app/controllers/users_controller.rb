class UsersController < ApplicationController
 
def search
  @q = User.ransack(params[:q])
  @users = @q.result(distinct: true)
end
def show
end
end
