class CommentsController < ApplicationController

  def create
    @advertisement = Advertisement.find(params[:advertisement_id])
    @comment = @advertisement.comments.new(comment_params)
    if @comment.save
      redirect_to advertisement_path(@advertisement)
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:content)
    end

end
