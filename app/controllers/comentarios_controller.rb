class ComentariosController < ApplicationController
	def create
	    @post = Post.find(params[:post_id])
	    @comentario = @post.comentarios.create(comentario_params)
	    redirect_to posts_path()
	end

	 
	
	def comentario_params
	      params.require(:comentario).permit(:comment, :likes, :post_id)
	end
end