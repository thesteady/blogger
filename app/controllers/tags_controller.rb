class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def destroy
    @tag = Tag.find(params[:id]).destroy
    flash.notice = "Tag '#{@tag.name}' Destroyed"
    redirect_to tags_path
  end

end
