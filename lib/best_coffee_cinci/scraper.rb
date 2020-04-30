class BestCoffeeCinci::Scraper
  
  def self.scrape_shops
    doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
    shops = doc.css(".component.title h3").each do |shop|
    name = shop.text.strip
    BestCoffeeCinci::Shop.new(name)
    end 
  end

  def self.scrape_locations
    shop_location = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
    info = shop_location.css(".component.text")
    info.css("br").text.strip.split
    info.each do |info|
      # binding.pry
    end 
  end

end 