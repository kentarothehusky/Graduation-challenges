class Contribution < ApplicationRecord
    mount_uploader :file, FileUploader
end
