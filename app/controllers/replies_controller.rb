class RepliesController < ApplicationController
  expose :poll
  expose :reply, parent: :poll

  def new
  end 

  def create
    reply.save
    redirect_to poll_path(poll) if reply.persisted?
  end 

  private

  def reply_params
    params.require(:reply).permit(:value)
  end 
end 