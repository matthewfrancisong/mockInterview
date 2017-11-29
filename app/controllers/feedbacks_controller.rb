class FeedbacksController < ApplicationController
  def index
    @feedbacks = Feedback.all
    render json:@feedbacks
  end

  def new
  end

  def update
  end
end
