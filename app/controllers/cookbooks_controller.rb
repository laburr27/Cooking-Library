class CookbooksController < ApplicationController

  def index
    @cookbooks = Cookbook.all
  end

  def new
    @cookbook = Cookbook.new
  end

  def create
    @cookbook = Cookbook.create(cookbook_params)
    redirect_to cookbooks_path(@cookbook)
  end

  def show
    @cookbook = Cookbook.find(params[:id])
  end

  def edit
    @cookbook = Cookbook.find(params[:id])
  end

  def update
    @cookbook = Cookbook.find(params[:id])
    @cookbook.update(cookbook_params)
    redirect_to cookbook_path(@cookbook)
  end

  # need destroy here
  
  private
  def cookbook_params
    params.require(:cookbook).permit(:title, :author, :img_url, :format, :summary, :bookshelf)
  end
end
