class GenresController < ApplicationController

  def new
   @genre = Genre.new
 end

 def create
   @genre = Genre.new(params.require(:genre))
   @genre.save
   redirect_to genre_path(@genre)
 end

 def show
   @genre = Genre.find(params[:id])
 end

 def edit
   @genre = Genre.find(params[:id])
 end

 def update
   @genre = Genre.find(params[:id])
   @genre.update(params.require(:genre))
   redirect_to genre_path(@genre)
 end

 private

 def post_params(*args)
   params.require(:genre).permit(*args)
 end

end
