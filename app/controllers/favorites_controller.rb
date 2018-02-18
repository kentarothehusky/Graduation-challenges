class FavoritesController < ApplicationController
  before_action :set_favorite, only: :destroy

  def index
    @favorites = current_user.favorites
  end  

  def create
    @favorite = current_user.favorites.create(contribution_id: params[:contribution_id])
    if @favorite.save
      WatchlistNoticeMailer.watchlist_notice(@favorite).deliver
      redirect_to contributions_url, notice: "#{@favorite.contribution.user.name}さんの提案書をお気に入り登録しました"
    else
      render :new
    end
  end

  def destroy
    current_user.favorites.find_by(contribution_id: params[:contribution_id]).destroy
    redirect_to contributions_url, notice: "#{@favorite.contribution.user.name}さんの提案書をお気に入り解除しました"
  end
  
  private
  
  def set_favorite
    @favorite = Favorite.find_by(contribution_id: params[:contribution_id])
  end
end
