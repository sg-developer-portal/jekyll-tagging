# frozen_string_literal: true

require "spec_helper"

RSpec.describe(JekyllTaggingAdv) do
  let(:overrides) { {} }
  let(:config) do
    Jekyll.configuration(Jekyll::Utils.deep_merge_hashes({
      "full_rebuild" => true,
      "source"       => source_dir,
      "destination"  => dest_dir,
      "show_drafts"  => false,
      "url"          => "http://example.org",
      "name"         => "My awesome site",
      "author"       => {
        "name" => "Dr. Jekyll",
      },
      "collections"  => {
        "my_collection" => { "output" => true },
        "other_things"  => { "output" => false },
      },
    }, overrides))
  end
  let(:site)     { Jekyll::Site.new(config) }
  let(:context)  { make_context(:site => site) }
  let(:jekyll_env) { "development" }
  before(:each) do
    allow(Jekyll).to receive(:env).and_return(jekyll_env)
    site.process
  end

  it "has a version number" do
    expect(Jekyll::Tagging::Adv::VERSION).not_to be nil
  end
  
end
  