class MovieController < ApplicationController
  def index
    # solicitar todas las columnas de la tabla
    @movies_all = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(posts_params)
    if @movie.save
      redirect_to movie_index_path
    else
      render :new
    end
  end

  private
  # Definicion de parametros a recibir
  def posts_params
    params.require(:movie).permit(:name, :synopsis, :director)
  end
end
