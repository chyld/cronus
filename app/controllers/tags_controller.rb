class TagsController < ApplicationController
  respond_to :html

  def index
    @tags = Tag.all
    respond_with @tags
  end

  def show
    @tag = Tag.find(params[:id])
    respond_with @tag
  end

  def edit
    @tag = Tag.find(params[:id])
    respond_with @tag
  end

  def update
    @tag = Tag.find(params[:id])
    @tag.name = params[:tag][:name]
    @tag.save
    respond_with @tag
  end
end
