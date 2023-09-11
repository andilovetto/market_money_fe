class MarketsService
  def self.find_markets
    response = conn("markets").get
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.find_market(market_id)
    response = conn("markets/#{market_id}").get
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.find_vendors(market_id)
    response = conn("markets/#{market_id}/vendors").get
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn(endpoint_url)
    url = "http://localhost:3000/api/v0/#{endpoint_url}"
    Faraday.new(url: url)
  end
end