require "rails_helper"

RSpec.describe "market show page", :vcr do
  context "when i visit the market show page" do
    let(:market) { MarketsFacade.get_markets.first }

    it "displays a market address, vendors and a link to vendor show page" do
      visit market_path(market)

      expect(page).to have_content("14&U Farmers' Market")
    end
  end
end