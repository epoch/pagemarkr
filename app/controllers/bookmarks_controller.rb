class BookmarksController < ApplicationController

  def index
    @bookmarks = Bookmark.all
    @bookmark = Bookmark.new
  end

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new
    @bookmark.url = params[:url]
    if @bookmark.save
      redirect_to '/bookmarks'
    else
      render :new # render a template
    end
  end

  def show
    @bookmark = Bookmark.find( params[:id] )
  end

  def destroy
    @bookmark = Bookmark.find( params[:id] )
    if @bookmark.destroy
      redirect_to '/bookmarks'
    else
      render :show
    end
  end

  def edit
    @bookmark = Bookmark.find( params[:id ] )
    render :edit
  end

  def update
    @bookmark = Bookmark.find( params[:id] )
    @bookmark.url = params[:url]
    if @bookmark.save
      redirect_to "/bookmarks/#{@bookmark.id}"
    else
      render :edit
    end
  end

end
