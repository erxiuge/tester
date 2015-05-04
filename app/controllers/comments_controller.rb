class CommentsController < ApplicationController

  def create
  	@comment = Comment.new(comment_params)
  	if @comment.save!
  	  Wedding.find(@comment.wedding.id).touch
  	end
  end

private

  def comment_params
  	params.require(:comment).permit(:content, :wedding_id)
  end

end


