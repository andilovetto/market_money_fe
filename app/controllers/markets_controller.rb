class MarketsController < ApplicationController
  def index
    @markets = MarketsFacade.get_markets
  end

  def show
    @market = MarketsFacade.get_market(params[:market_id])
    @vendors = MarketsFacade.get_vendors(params[:market_id])
  end
end