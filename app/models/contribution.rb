class Contribution < ApplicationRecord
  mount_uploader :file, FileUploader
  
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: :user
  belongs_to :user
  
  enum category: {
    サービス: 1,
    商品:2,
    イベント: 3,
    セミナー説明: 4,
    協賛: 5,
    商品開発: 6,
    データ分析: 7,
    システム開発: 8,
    その他: 9
  }

end
