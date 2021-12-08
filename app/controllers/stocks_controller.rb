class StocksController < ApplicationController
  def search
    @price=Stock.new_lookup(params[:stock])
  end
end
