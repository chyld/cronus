class Tag < ActiveRecord::Base
  has_and_belongs_to_many :notes

  def prev
    Tag.where("id < #{id}").order("id DESC").first
  end

  def next
    Tag.where("id > #{id}").order("id ASC").first
  end

  def self.missing_notes
    Note.find_by_sql("select distinct(n.*) from notes n left join notes_tags nt on n.id = nt.note_id where note_id is NULL order by n.id")
  end

  default_scope :order => 'name ASC'
end
