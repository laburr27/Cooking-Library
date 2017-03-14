class BookshelvesController < ApplicationController

  def index
    @bookshelves = Bookshelf.all
  end

  def show
    @bookshelf = Bookshelf.find(params[:id])
  end

  # I'd add CRUD here later if you have time, so you can update the location of the cookbook especially!
end
