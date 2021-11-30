class PollsController < ApplicationController
  expose :poll
  expose :replies, from: :poll

  def create 
    poll.save
    redirect_to poll_path(poll) 
  end

  def update
    poll.update(poll_params)
    redirect_to poll_path(poll)
  end 

  private

  def poll_params
    params.fetch(:poll, {}).permit(:title, :id)
  end 
end 