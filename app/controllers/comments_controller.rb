class CommentsController < ApplicationController
    def index 
        @comments  = Comments.all
    end 

    def show
        @comment = Comment.find(params[:id])
      end

      def new
        @comment = Comment.new
      end

      def create 
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comments_params)
        redirect_to  post_path(@post)
    end 

   private
    def comments_params
       params.require(:comment).permit(:body,:author)
    end
end
