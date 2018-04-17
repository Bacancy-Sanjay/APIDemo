class Api::V1::PostsController < Api::V1::BaseController
	before_action :authorization
	def index
		@posts = Post.all
		render json: @posts
	end

	def create 
		@post = Post.create(post_params)
	end

	private
	def post_params
		params.require(:post).permit(:title, :image)
	end
end