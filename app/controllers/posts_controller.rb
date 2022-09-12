class PostsController < ApplicationController

    def index
        posts = Post.all
        render json: posts
    end

    def create
        post = Post.create(post_params)
        render json: post, status: :created
    end

    private

    def post_params
        params.permit(:subject, :body, :image_url, :user_id)
    end

end
