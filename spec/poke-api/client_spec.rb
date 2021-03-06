require "spec_helper"

describe PokeAPI::Client do
  let(:client) { PokeAPI::Client.new(path) }

  PokeAPI::RESOURCES.each do |resource|
    describe "indexing #{resource}" do
      let(:path) { resource }

      before do
        VCR.insert_cassette "#{path}#index"
      end

      after do
        VCR.eject_cassette
      end

      it "returns a data collection" do
        client.all.wont_be_empty
      end
    end
  end

  describe "looking up a specific pokémon" do
    let(:path) { "pokemon" }
    let(:number) { 1 }

    before do
      VCR.insert_cassette "#{path}#show/#{number}"
    end

    after do
      VCR.eject_cassette
    end

    it "returns data for the requested pokémon" do
      monster = client.find(number)
      monster["name"].must_equal "bulbasaur"
    end
  end
end
