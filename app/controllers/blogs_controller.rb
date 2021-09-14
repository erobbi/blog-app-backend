class BlogsController < ApplicationController
    skip_before_action :authorize, only: [:index]

    def show
        blog = Blog.find_by(user_id: params[:user_id])
        render json: blog, status: :ok
    end

    def index
        blogs = Blog.all
        render json: blogs, status: :ok
    end

    def create
        blog = @current_user.blogs.create!(blog_params)
        render json: blog, status: :created
    end

    def update
        blog = Blog.find(params[:id])
        blog.update!(blog_params)
        render json: blog, status: :accepted
    end

    def destroy
        blog = Blog.find(params[:id])
        blog.destroy
        head :no_content, status: :deleted
    end

    def increment_likes
        blog = Blog.find(params[:id])
        blog.update!(likes: blog.likes + 1)
        render json: blog, status: :accepted
    end

    def decrement_likes
        blog = Blog.find(params[:id])
        blog.update!(likes: blog.likes - 1)
        render json: blog, status: :accepted
    end

    private

    def blog_params
        params.permit(:title, :content, :img_url, :user_id, :likes)
    end

end
