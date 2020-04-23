class BestCoffeeCinci::Scraper
  
  def self.scrape_shops
    doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
    shops = doc.css(".component.title h3").each do |shop|
    name = shop.text.strip
    BestCoffeeCinci::Shop.new(name)
    end 
  end
  
  def self.scrape_location
    doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
 
    locations = doc.css(".component.text br").each do |location|
    # name = location.css(":second-child").text
    BestCoffeeCinci::Location.new
    end 
  end

end 
