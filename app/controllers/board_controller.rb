class BoardController < ApplicationController
    def index
        
    end
    
    def new
    end
    
    def create
        post = Post.new
        post.title = params[:title]
        post.content = params[:content]
        post.save
    end
    
    def show
        @post = Post.find(params[:id])
        @replies = @Post.replies
    end
    
    def create_reply
        reply = Reply.new
        reply.content = params[:reply]
        reply.id = params[:id]
        reply.save
        
        redirect_to :back
    end
end
