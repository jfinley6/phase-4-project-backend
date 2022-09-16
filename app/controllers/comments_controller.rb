class CommentsController < ApplicationController
    def index
        comments = Comment.all
        render json: comments, include: :post
      end
      def create
        comment = Comment.create!(
            body: params['comment']['body'],
            user_id: params['comment']['user_id'],
            post_id: params['comment']['post_id']
        )
        render json: comment, status: :created
    end

    def destroy
      comment = Comment.find(params[:id])
      comment.destroy
    end
end
