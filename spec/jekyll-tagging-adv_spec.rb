# frozen_string_literal: true

RSpec.describe Bundle::Gem::Test do
    it "has a version number" do
      expect(Bundle::Gem::Test::VERSION).not_to be nil
    end
  
    it "does something useful" do
      expect(false).to eq(true)
    end
  end
  