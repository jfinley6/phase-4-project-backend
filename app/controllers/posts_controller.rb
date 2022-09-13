class PostsController < ApplicationController

    def index
        posts = Post.all
        render json: posts
    end

    def create
        post = Post.create!(
            subject: params['post']['subject'],
            body: params['post']['body'],
            image_url: params['post']['image_url'],
            user_id: params['post']['user_id']
        )
        render json: post, status: :created
    end

    def show
        post = Post.find(params[:id])
        render json: post, include: :comments
    end

    private

    def post_params
        params.permit(:subject, :body, :image_url, :user_id)
    end

end
