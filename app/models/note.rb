class Note < ActiveRecord::Base
  has_many :urls
  has_many :assets
  has_and_belongs_to_many :tags
end
