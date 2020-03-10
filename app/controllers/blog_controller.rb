class BlogController < ApplicationController
    def home
        @blogs = Blog.all
    end

    def new
    end

    def create
        @blogpost = Blog.create(
            title: params[:title],
            content: params[:content]
        )

        if @blogpost.valid?
            redirect_to '/home'
        end
    end

    def show
    @blog = Blog.find(params[:id])
    end

    def destroy
        @blogs = Blog.find(params[:id]).destroy

        redirect_to '/home', :notice => "Your blog has been destroyed."
    end
end
