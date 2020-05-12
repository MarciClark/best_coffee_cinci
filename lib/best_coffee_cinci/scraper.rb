require 'json'

class BestCoffeeCinci::Scraper
  
  # def self.scrape_shops
  #   doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
  #   shops = doc.css(".component.title h3").each do |shop|
  #   name = shop.text.strip
  #   BestCoffeeCinci::Shop.new(name)
  #   end 
  # end

  # def self.scrape_info
  #   doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
  #   info = doc.css(".component.text")
  #   info.css("p").text.split
  #   info.each do |info|
  #   end 
  #   info.text.gsub("\n", "")
  # end



    # def self.scrape_shops
  #   doc = Nokogiri::HTML(open("https://club.atlascoffeeclub.com/cincinnati-coffee-shops-7-must-try/"))
  #   shops = doc.css(".a href strong").each do |shop|
  #   name = shop.text.strip
  #   BestCoffeeCinci::Shop.new(name)
  #   end 
  # end

  # def self.scrape_info
  #   doc = Nokogiri::HTML(open("https://club.atlascoffeeclub.com/cincinnati-coffee-shops-7-must-try/"))
  #   info = doc.css(".br strong").each do |info|
  #     binding.pry
  #   info.css("p").text.split
  #   end 
  #   info
  # end



  def self.scrape_shops
    doc = Nokogiri::HTML(open("https://cincinnatiusa.com/article/9-hot-coffee-shops"))
    shops = doc.css(".article-body h2").each do |shop|
    name = shop.text.strip
    BestCoffeeCinci::Shop.new(name)
    end 
  end

  def self.scrape_info
    doc = Nokogiri::HTML(open("https://cincinnatiusa.com/eat-and-drink/carabello-coffee"))
    info = doc.css(".address")
    info.css("p").text.strip
    # binding.pry
    end
  end

  
  


  #WORKING
  # def self.scrape_info
  #   doc = Nokogiri::HTML(open("https://cincinnatiusa.com/article/9-hot-coffee-shops"))
  #   info = doc.css(".article-body span")
  #   info.css("p").text
  #   binding.pry
  # end




  #Foursquare Scrape
  # def self.scrape_shops
  #   doc = Nokogiri::HTML(open("https://foursquare.com/top-places/cincinnati/best-coffee-shops", 'User-Agent' => 'ruby'))
  #   shops = doc.css(".venueName").each do |shop|
  #   name = shop.text.strip
  #   BestCoffeeCinci::Shop.new(name)
  #   end 
  # end 

  # def self.scrape_info 
  #   doc = Nokogiri::HTML(open("https://foursquare.com/top-places/cincinnati/best-coffee-shops", 'User-Agent' => 'ruby'))
  #   info = doc.css (".address")
  #   info.css("span").text.strip
  #   info.each do |info|
  #   end
  #   info.text
  #   binding.pry
  # end 
