class TagsController < ApplicationController
  
  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    flash.notice = "Tag '#{@tag.name}' Deleted!"
    redirect_to tags_path
  end
  
  def index
    @tags = Tag.all
  end
  
  def show
    @tag = Tag.find(params[:id])
  end
  
 
  
end
