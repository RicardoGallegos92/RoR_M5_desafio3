class SerieController < ApplicationController
  def index
    # solicitar todas las columnas de la tabla
    @serie_all = Serie.all
  end

  def new
    @serie = Serie.new
  end

  def create
    @serie = Serie.new(posts_params)
    if @serie.save
      redirect_to serie_index_path
    else
      render :new
    end
  end

  private
  def posts_params
    params.require(:serie).permit(:name, :synopsis, :director)
  end
end
