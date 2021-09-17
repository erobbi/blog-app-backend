class CommentsController < ApplicationController
    skip_before_action :authorize

    def create
        blog = Blog.find(params[:blog_id])
        comment = blog.comments.create!(comment_params)
        render json: comment, status: :created
    end

    def show
        comment = Comment.find(params[:id])
        render json: comment, status: :ok
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
        params.permit(:blog_id, :user_id, :content)
    end
end
