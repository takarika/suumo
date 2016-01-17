class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    house_ids = @user.favorites.pluck(:house_id)

    @houses = House.where(user_id: params[:id])
    @favorite_houses = House.find(house_ids)
  end
end
