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

  def self.scrape_shops
    doc = Nokogiri::HTML(open("https://cincinnatiusa.com/article/9-hot-coffee-shops"))
    shops = doc.css(".article-body h2").each do |shop|
    name = shop.text.strip
    BestCoffeeCinci::Shop.new(name)
    end 
  end

  def self.scrape_info
    doc = Nokogiri::HTML(open("https://cincinnatiusa.com/article/9-hot-coffee-shops"))
    info = doc.css(".font-size")
    info.css("p").text.split
    info.each do |info|
    end 
    info.text
  end
end 