class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
  end

  def new
   @artist = Artist.new
   authorize! :new, @artist
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      redirect_to(artists_path)
    else
      render(:new)
    end
    authorize! :create, @artist
  end

  def edit
    @artist = Artist.find(params[:id])
    authorize! :edit, @artist
  end


  def update
    @artist = Artist.find(params[:id])
    if @artist.update(artist_params)
      redirect_to(artists_path)
    else
      render(:edit)
    end
    authorize! :update, @artist
  end

  def destroy
    @artist = Artist.find(params[:id])
    authorize! :destroy, @artist
    @artist.destroy
    redirect_to(artists_path)
  end

  private

  def artist_params
  params.require(:artist).permit(:name)
  end

end