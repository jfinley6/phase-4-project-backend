class PostsController < ApplicationController

    def index
        posts = Post.all
        render json: posts
    end

    def create
        
    end

    private

    def post_params
        params.permit(:subject, :body, :image_url, :user_id)
    end

end
