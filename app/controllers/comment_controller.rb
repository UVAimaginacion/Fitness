class CommentController < ApplicationController
    def show
        @publicacion = Publicacione.find(params[:id]) rescue nil
        if @publicacion != nil
          @comentarios = @publicacion.comments
          render json: @comentarios , status: :ok
        else
          render json: @publicacion.errors , status: :unprocessable_entity
        end
    end

    #method POST
    def create
      @publicacion = Publicacione.find(params[:publicacion_id]) rescue nil
      if @publicacion != nil
        @comentarios = @publicacion.comments.create(article_params)
        if @comentarios != nil
          render json: @comentarios , status: :created
        else
          render json: @comentarios.errors , status: :unprocessable_entity
        end
      else
        render json: @publicaciones.errors , status: :unprocessable_entity
      end
    end

    private
    def article_params
      params.require(:comment).permit(:nombre,:comentario)
    end
end