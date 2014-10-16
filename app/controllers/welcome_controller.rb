class WelcomeController < ApplicationController
  def index
    if params[:admin] == "true"
      @current_time = Time.now
      @delivery_time = @current_time + (45*60)
      render "index"
      # or
      # render 'index', locals: {estimatedTime: Time.now + (45*60)}
    else
      render "under_construction", layout: false
    end
  end
end
