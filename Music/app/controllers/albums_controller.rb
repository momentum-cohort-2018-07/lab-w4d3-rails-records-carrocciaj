class AlbumsController < ApplicationController
  def index
    @album = Album.all
  end
  
  def show
    @album = Album.find(params[:id])
  end
  
  def new
  end

  def edit
    @album = Album.find(params[:id])
  end

  def create
    @album = Album.new(album_params)

    @album.save
    redirect_to @album
  end

  def update
    @album = Album.find(params[:id])

    if @album.update(album_params)
      redirect_to @album
    else
      render 'edit'
    end
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
   
    redirect_to @album
  end
  private
  def album_params
    params.require(:album).permit(:title, :artist_name, :year_released)
  end
end
