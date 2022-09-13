class CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: comments, include: :post
      end
end
