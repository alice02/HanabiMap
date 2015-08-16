class Api::V1::PostsController < ApplicationController

 	protect_from_forgery :except => [:create]

	def index
		@posts = Post.all
		render "index", :formats => [:json], :handlers => [:jbuilder]
	end

	def create
		@post = Post.new(post_params)
		if @post.save
			render status:200, json: { message: 'success' }
		else
			render status:200, json: { message: 'failure' }
		end
	end

	private
		def post_params
			params.require(:post).permit(:name, :comment, :date, :latitude, :longitude, :photo)
		end
end
