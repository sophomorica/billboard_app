class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_billboard, only: [:index]
  def index
    #@artists = Artist.all(params[:artist_id])
    @songs = Song.all
  end

  def show
    
  end
  

  def edit
  end

  def new
    @song = @artist.songs.new
  end

  def create
    @song = @artist.songs.new(song_params)
    if @song.save
      redirect_to @artist
    else
      render :new
    end
  end

  def update
    
    if @artist.song.update(song_params)
      redirect_to @artist
    else
      render :edit
    end
  end
 

  private
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end
  def song_params
    params.require(:song).permit(:on_billboard, :name, :genre)
  end
  def set_song
    @song = Song.find(params[:id])
  end
  def set_billboard
    @billboard = Billboard.find(params[1])
  end
end
