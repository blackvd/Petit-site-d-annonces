class CommentsController < ApplicationController
  before_action :authenticate_user!


  def create
    @advertisement = Advertisement.find(params[:advertisement_id])
    @comment = @advertisement.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to advertisement_path(@advertisement)
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:content)
    end

end
