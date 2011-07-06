class TagsController < ApplicationController
  respond_to :html

  def index
    @tags = Tag.all
    respond_with @tags
  end

  def show
    if params[:id] != "0"
      @tag = Tag.find(params[:id])
    else
      @tag = Tag.new
      @tag.notes = Tag.missing_notes
    end
    respond_with @tag
  end

  def edit
    if params[:id] == "0"
      redirect_to :action => :show
    else
      @tag = Tag.find(params[:id])
      respond_with @tag
    end
  end

  def update
    @tag = Tag.find(params[:id])
    @tag.name = params[:tag][:name]
    @tag.save
    respond_with @tag
  end
end
