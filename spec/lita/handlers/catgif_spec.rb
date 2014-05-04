require "spec_helper"
require "uri"

describe Lita::Handlers::Catgif, lita_handler: true do
  it { routes_command("catgif").to(:catgif) }

  describe "catgif" do
    it "should return a url" do
      send_command("catgif")
      expect(replies.last).to match(URI.regexp)
    end
  end
end
