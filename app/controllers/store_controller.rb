class StoreController < ApplicationController
  def index
  	@products = Product.order(:title)
  	@index_visit_count = cal_index_visits
  	@shown_message = "You've been here quite long" if @index_visit_count >= 5
  end

  def cal_index_visits
  		if session[:counter].nil?
				session[:counter] = 1
			else
				session[:counter] += 1
			end
  end

end
