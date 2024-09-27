class DocumentaryFilmController < ApplicationController
  def index
    # solicitar todas las columnas de la tabla
    @df_all = DocumentaryFilm.all
  end

  def new
    # Objeto vacío para meter los datos del formulario
    @documentary_film = DocumentaryFilm.new
  end

  def create
    @documentary_film = DocumentaryFilm.new(posts_params)
    if @documentary_film.save
      redirect_to documentary_film_index_path
    else
      render :new
    end
  end

  private
  # Definicion de parametros a recibir
  def posts_params
    params.require(:documentary_film).permit(:name, :synopsis, :director)
  end
end
