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
        user = User.find(session[:user_id])
        blog = user.blogs.create!(blog_params)
        # blog[:user_id] = session[:user_id]

        if blog.valid?
            render json: blog, status: :ok
        else
            render json: {error: "Not valid"}, status: :unprocessable_entity
        end
    end

    private

    def blog_params
        params.permit(:title, :content, :img_url, :user_id, :likes)
    end

end
