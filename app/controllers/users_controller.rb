class UsersController < ApplicationController
  def new
  end

  def create
    user = User.create(user_params)
    if user.valid?
      user.save
      flash[:success] = 'You have successfully registered and are now logged in.'
      redirect_to '/profile'
    else
      flash[:error] = user.errors.full_messages.to_sentence
      redirect :new
    end
  end

  def show
  end

  private

  def user_params
    params.permit(:name, :address, :city, :state, :zip, :email, :password, :password_confirmation)
  end
end
