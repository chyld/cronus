class NotesController < ApplicationController
  respond_to :html

  def index
    @notes = Note.all
    respond_with @notes
  end

  def show
    @note = Note.find(params[:id])
    respond_with @note
  end

  def new
    @note = Note.new
    respond_with @note
  end

  def edit
    @note = Note.find(params[:id])
    respond_with @note
  end

  def create
    @note = Note.new
    update_note_attributes
    @note.save
    respond_with @note
  end

  def update
    @note = Note.find(params[:id])
    update_note_attributes
    @note.save
    respond_with @note
  end

  private
  def update_note_attributes
    @note.title = params[:note][:title]
    @note.body = params[:note][:body]

    tags = []
    params[:tag].each_pair do |k,v|
      tag = v.strip
      tags << (Tag.where(:name => tag).first || Tag.create(:name => tag)) unless tag.empty?
    end unless params[:tag].nil?
    @note.tags = @note.tags + tags.uniq

    params[:site].each_pair do |k,v|
      url = v.strip
      @note.urls << Url.new(:link => url) unless url.empty?
    end unless params[:site].nil?

    params[:attachment].each_pair do |k,v|
      @note.assets << Asset.new(:file => v)
    end unless params[:attachment].nil?
  end
end