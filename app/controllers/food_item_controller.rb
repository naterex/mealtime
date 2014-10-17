class FoodItemController < ApplicationController

  def show
    if not params[:id]
      render "show", layout: false
    else
      render "show", layout: false
    end

  end

end
