class UsersController < ApplicationController
  def show
    @name = current_user.name
    @number = current_user.number
    @department = current_user.department.name
    @email = current_user.email
  end
end
