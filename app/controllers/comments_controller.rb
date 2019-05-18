class CommentsController < ApplicationController

  def create
    @advertisement = Advertisement.find(params[:find])
    
  end

end
