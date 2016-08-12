class PublicacionController < ApplicationController
  #method GET
  def index
    @publicaciones = Publicacione.all
    render json: @publicaciones, status: :ok
  end

  #method POST
  def create
    @publicaciones = Publicacione.new(article_params)
    if @publicaciones.save
      render json: @publicaciones , status: :created
    else
      render json: @publicaciones.errors , status: :unprocessable_entity
    end
  end

  #method GET with id
  def show
    @publicaciones = Publicacione.find(params[:id])
    render json: @publicaciones, status: :ok
  end

  #method UPDATE
  def update
    @publicaciones = Publicacione.find(params[:id])
    if @publicaciones.update({:nombre => params[:nombre] ,:texto => params[:texto], :tags => params[:tags]})
      head :no_content
    else
      render json: @publicaciones.errors , status: :unprocessable_entity
    end
  end

  #method DELETE
  def destroy
    @publicaciones = Publicacione.find(params[:id])
    if @publicaciones.destroy
      head :no_content
    else
      render json: @publicaciones.errors , status: :unprocessable_entity
    end
  end

  private
  def article_params
    params.require(:publicacion).permit(:nombre, :texto, :tags)
  end

end