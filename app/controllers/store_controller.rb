class StoreController < ApplicationController
  def index
    @products = Product.order( :title )
    cur_time = Time.now
    @cur_time_string = "#{cur_time.strftime( '%Y-%m-%d, %I:%M%P' )}"
  end
end
