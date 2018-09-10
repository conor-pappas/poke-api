require "spec_helper"

describe PokeAPI do
  it "defines a version" do
    PokeAPI::VERSION.wont_be_nil
  end
end
