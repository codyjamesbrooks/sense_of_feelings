class PollsController < ApplicationController
  expose :poll
  expose :replies, from: :poll

  def new 
    poll.save
    redirect_to poll_path(poll) 
  end

  def update
    poll.update(poll_params)
    redirect_to poll_path(poll)
  end 

  private

  def poll_params
    params.require(:poll).permit(:title, :id) if action_name.to_sym != :create
  end 
end 