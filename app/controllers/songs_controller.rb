class SongsController < ApplicationController
  before_action :set_artist, except: [:index]
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

  private
  def set_artist
    @artist = Artist.find(params[:artist_id])
  end
  def song_params
    params.require(:song).permit(:on_billboard, :name)
  end
  def set_billboard
    @billboard = Billboard.find(params[:billboard_id])
  end
end
