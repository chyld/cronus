class SlideshowController < ApplicationController
  respond_to :html

  def show
    if params[:id] != "0"
      @tag = Tag.find(params[:id])
      respond_with @tag
    else
      redirect_to :controller => :tags, :action => :index
    end
  end
end
