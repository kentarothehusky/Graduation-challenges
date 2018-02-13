class FavoritesController < ApplicationController

  def index
    @favorites = Favorite.all
  end  

  def create
    favorite = current_user.favorites.create(contribution_id: params[:contribution_id])
    redirect_to contributions_url, notice: "#{favorite.contribution.user.name}さんの提案書をお気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(contribution_id: params[:contribution_id]).destroy
    redirect_to contributions_url, notice: "#{favorite.contribution.user.name}さんの提案書をお気に入り解除しました"
  end
end
