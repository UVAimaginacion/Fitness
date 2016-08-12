class RutinaController < ApplicationController
  #method GET
  def index
    @rutinas = Rutina.all
    render json: @rutinas, status: :ok
  end

  #method POST
  def create
    @rutinas = Rutina.new(article_params)
    if @rutinas.save
      render json: @rutinas , status: :created
    else
      render json: @rutinas.errors , status: :unprocessable_entity
    end
  end

  #method GET with id
  def show
    @rutinas = Rutina.find(params[:id])
    render json: @rutinas, status: :ok
  end

  #method UPDATE
  def update
    @rutinas = Rutina.find(params[:id])
    if @rutinas.update({:imagen => params[:imagen] ,:musculo => params[:musculo], :descripcion => params[:descripcion], :nombre => params[:nombre]})
      head :no_content
    else
      render json: @rutinas.errors , status: :unprocessable_entity
    end
  end

  #method DELETE
  def destroy
    @rutinas = Rutina.find(params[:id])
    if @rutinas.destroy
      head :no_content
    else
      render json: @rutinas.errors , status: :unprocessable_entity
    end
  end

  private
   def article_params
     params.require(:rutina).permit(:imagen, :musculo, :descripcion, :nombre)
   end

end