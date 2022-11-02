class PostsController < ApplicationController

    def index
        posts = Post.all.order("created_at desc")
        render json: posts, include: {:comments => {:include => :user}, :user => {only: [:username]}}
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
        render json: post, include: {:comments => {:include => :user}, :user => {only: [:username, :id, :picture]}}
    end

    def destroy
        post = Post.find(params[:id])
        post.destroy
    end


end