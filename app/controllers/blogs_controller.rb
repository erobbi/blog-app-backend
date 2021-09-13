class BlogsController < ApplicationController

    def show
        blog = Blog.find_by(user_id: params[:user_id])
        render json: blog, status: :ok
    end

    def index
        blogs = Blog.all
        render json: blogs, status: :ok
    end

    def create
        blog = Blog.create(blog_params)
        if blog.valid?
            render json: blog, status: :ok
        else
            render json: {error: "Not valid"}, status: :not_valid
        end
    end

    private

    def blog_params
        params.permit(:title, :content, :user_id, :img_url, :likes)
    end

end
