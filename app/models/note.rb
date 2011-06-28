class Note < ActiveRecord::Base
  has_many :urls
  has_many :assets
  has_and_belongs_to_many :tags

  def prev
    Note.where("id < #{id}").order("id DESC").first
  end

  def next
    Note.where("id > #{id}").order("id ASC").first
  end
end
