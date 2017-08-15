class PostsController < ApplicationController
 
   def index
    @posts = Post.all
   end
    
    def new
        @post = Post.new
    end

     def create
        @post = Post.new
        if @post.save 
            puts "yay"
            redirect_to post_path
        else
        puts "nay"
        redirect_to root_path
        end 
    end
    

    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)
        redirect_to(post_path(@post))
    end

    private 
    def permit_post
        params.require(:post).permit(:image, :description)
    end 

    
end
 