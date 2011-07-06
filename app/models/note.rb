class Note < ActiveRecord::Base
  has_many :urls
  has_many :assets
  has_and_belongs_to_many :tags

  def prev
    Note.where("id < #{id}").last
  end

  def next
    Note.where("id > #{id}").first
  end

  default_scope :order => 'id ASC'
end
