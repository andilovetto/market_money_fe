class MarketsFacade

  def self.get_markets
   markets = MarketsService.find_markets
   markets[:data].map do |market|
      Market.new(market)
    end
  end

  def self.get_market(market_id)
   market = MarketsService.find_market(market_id)
   Market.new(market)
  end

  def self.get_vendors(market_id)
    vendors = MarketsService.find_vendors(market_id)
    Vendor.new(market_id)
  end

end