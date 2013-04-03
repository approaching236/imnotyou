require 'spec_helper'

describe Crawler do
  it "should take a list of links" do
    crawler = Crawler.new([:casbah])
    crawler.links = [:casbah]
  end

  it "should run!" do
    crawler = Crawler.new([:casbah])
    crawler.run!
  end
end
