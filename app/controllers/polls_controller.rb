class PollsController < ApplicationController
  expose :poll

  def new
  end 

  def create
    poll.save
    redirect_to poll_path(poll)
  end 

  def update
    poll.update(polls_params)
    redirect_to poll_path(poll)
  end 

  private

  def polls_params
    params.require(:poll).permit(:title, :id) if action_name.to_sym != :create
  end 
end 