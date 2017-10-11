class SongsController < ApplicationController

  def index
  end

  def new
   @song = Song.new
 end

 def create
   @song = Song.new(params.require(:song))
   @song.save
   redirect_to song_path(@song)
 end

 def show
   @song = Song.find(params[:id])
 end

 def edit
   @song = Song.find(params[:id])
 end

 def update
   @song = Song.find(params[:id])
   @song.update(params.require(:song))
   redirect_to song_path(@song)
 end

 private

 def post_params(*args)
   params.require(:song).permit(*args)
 end

end
