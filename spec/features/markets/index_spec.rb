require "rails_helper"

RSpec.describe "markets index page", :vcr do
  context "when i visit the markets index page" do
    let(:market) { MarketsFacade.get_markets.first }

    it "displays all markets with their name, city and state" do
      visit markets_path

      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content("Washington")
      expect(page).to have_content("District of Columbia")
      expect(page).to have_button("More Info")
      within(".market-#{market.id}") do
        click_button "More Info"
      end
      expect(current_path).to eq(market_path(market))
    end
  end
end