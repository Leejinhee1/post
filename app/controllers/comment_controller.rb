class CommentController < ApplicationController
    def create
        @comment = Comment.new
        @comment.content = params[:comment_content]
        @comment.id = params[:id]
        @comment.save
        
        redirect_to "/home/show/#{params[:id]}"
    end
    
    def destroy
    end
    
    
end
