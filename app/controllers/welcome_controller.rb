class WelcomeController < ApplicationController
  def index
    @current_time = Time.now
    @delivery_time = @current_time + (45*60)
    @delivery_time = @delivery_time.localtime.strftime("%I:%M %P")

    @western_item = FoodItem.where(cuisine: "Western").sample
    @asian_item = FoodItem.where(cuisine: "Asian").sample
    @adventurous_item = FoodItem.where(cuisine: "Adventurous").sample

    $i = 0
    $homepage_num_pics = 4
    @item = []
    until $i > $homepage_num_pics  do
      @item[$i] = FoodItem.all.sample
      $i +=1;
    end

    if params[:admin] == "true"
      render "index"
    else
      render "under_construction", layout: false
    end

  end
end
