class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show]

  # GET /restaurants
  def index
    @bookmarks = Bookmark.all
  end

  # GET /bookmarks/1
  def show
  end

  # GET /bookmarks/new
  def new
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  # POST /restaurants
  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @list

    if @bookmark.save!
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
