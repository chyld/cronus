class Tag < ActiveRecord::Base
  has_and_belongs_to_many :notes

  def prev
    Tag.where("id < #{id}").order("id DESC").first
  end

  def next
    Tag.where("id > #{id}").order("id ASC").first
  end
end
