class BillboardsController < ApplicationController
  before_action :set_song

  def index
    @billboards = Billboard.All
  end

  def new
    @billboard = @song.billboards.new
  end

  def create
    @billboard = @song.billboards.new(billboard_params)
    if @billboard.save
      redirect_to song_billboards_path(@song)
    else
      render :new
    end
  end

  def destroy
    @billboard = @song.billboards.find(params[:id])
    @billboard.destroy
    redirect_to song_billboards_path(@song)
  end

 private
   def set_song
     @song = Song.find(params[:song_id]) 
   end

   def billboard_params
     params.require(:billboard).permit(:title, :country)
   end
end