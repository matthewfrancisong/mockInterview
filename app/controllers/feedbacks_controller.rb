class FeedbacksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @feedbacks = Feedback.all
    render json: { feedbacks: @feedbacks }
  end

  def new
  end

  def update
  end
end
