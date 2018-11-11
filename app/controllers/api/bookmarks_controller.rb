class Api::BookmarksController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @bookmarks = Bookmark.all
    render json: @bookmarks
  end

  def create
    bookmark = Bookmark.new
    bookmark.url = params[:url]
    bookmark.title = MetaInspector.new(bookmark.url).best_title
    if bookmark.save 
      render json: bookmark
    else
      render json: { message: 'oh noooooo' }
    end
  end

end