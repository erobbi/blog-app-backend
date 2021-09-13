class CommentsController < ApplicationController

    def create
        comment = @current_user.comments.create!(comment_params)
        render json: comment, status: :created
    end

    def update
        comment = Comment.find(params[:id])
        comment.update!(comment_params)
        render json: comment, status: :accepted
    end

    def destroy
        comment = Comment.find(params[:id])
        comment.destroy
        head :no_content, status: :deleted
    end

    private

    def comment_params
        params.permit(:id, :content)
    end
end
