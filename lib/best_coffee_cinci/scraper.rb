class BestCoffeeCinci::Scraper
  
  def self.scrape_shops
    doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
    shops = doc.css(".component.title h3").each do |shop|
    name = shop.text.strip
    BestCoffeeCinci::Shop.new(name)
    end 
  end

  def self.scrape_locations
    doc = Nokogiri::HTML(open("https://www.uc.edu/campus-life/food/locations-hours/cafes.html"))
    locations = doc.css(".component.text br").text.strip.split
    #added .split to turn string into an array
    binding.pry
    locations.each do |location|
      puts location.text
    end
  end
end 