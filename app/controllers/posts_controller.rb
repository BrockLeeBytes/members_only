class PostsController < ApplicationController
	before_action :logged_in_user, except: [:index]

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	@post.user_id = current_user.id
  	@post.save
  	redirect_to clubhouse_path
  end

  def index
  	@post = Post.all
  end

  def logged_in_user
  	unless logged_in?
  		redirect_to login_path
  	end
  end

  private
  	def post_params
  		params.require(:post).permit(:body)
  	end
end
