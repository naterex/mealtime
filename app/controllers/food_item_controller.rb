class FoodItemController < ApplicationController

  def show
    if params[:id]
      @id_of_URL = params[:id]
      @food_id = FoodItem.find(@id_of_URL)
      render "show", layout: false
    else
      render "welcome/under_construction", layout: false
    end

  end

end
