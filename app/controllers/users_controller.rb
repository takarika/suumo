class UsersController < ApplicationController
  def show
     @user = User.find(params[:id])
     house_ids = @user.favorites.pluck(:house_id)
     p house_ids

     @favorite_houses = House.find(house_ids)

     # @favorites = Favorite.where({user_id: params[:id]})
     # @favorites.houses

     p @favorite_houses
  end
end
