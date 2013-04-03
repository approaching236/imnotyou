require 'date'

class Crawler
  attr_accessor :sites_to_crawl
  def initialize sites_to_crawl
    @sites_to_crawl = sites_to_crawl
    @urls = {:casbah => "http://www.casbahmusic.com/schedule/2013/04/"}
    @agent = Mechanize.new
  end

  def run!
    sites_to_crawl.each do |site|
      self.send(site)
    end
  end

  def casbah
    Show.delete_all
    page = @agent.get(@urls[:casbah])
    page.search('div.div_article').each do |listing|
      show = Show.new(
        :venue    => 'Casbah',
        :bands    => listing.search('tr span').first.text,
        :cover    => listing.search('tr span').last.text,
        :date     => listing.search('li.date_link').text,
        :all_ages => true)
      show.save!
    end
  end
end
