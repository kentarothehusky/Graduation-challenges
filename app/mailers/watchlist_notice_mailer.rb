class WatchlistNoticeMailer < ApplicationMailer
  # 引数はコントローラから渡している
  # メソッド名でviewに渡す
  def watchlist_notice(favorite)
    @favorite = favorite
    
    mail to: "#{@favorite.contribution.user.email}", subject: "ウォッチリスト追加のお知らせメール"
  end
end
