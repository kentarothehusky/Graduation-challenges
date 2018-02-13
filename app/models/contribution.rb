class Contribution < ApplicationRecord
  mount_uploader :file, FileUploader
  
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, dependent: :destroy, source: :user
  belongs_to :user

end
