class PostsController < ApplicationController
  def index
  	@posts = Post.paginate(page: params[:page], per_page: 15).order('created_at DESC')
  	respond_to do |format|
	  format.html
	  format.js
	end
  end
end
