class Asset < ActiveRecord::Base
  mount_uploader :file, FileUploader
  belongs_to :note
end
