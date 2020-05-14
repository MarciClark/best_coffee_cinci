class BestCoffeeCinci::Scraper

  def self.scrape_shops
    url = "https://cincinnatiusa.com/article/9-hot-coffee-shops"
    doc = Nokogiri::HTML(open(url))
    shops = doc.css(".article-body h2").each do |shop|
    name = shop.text.strip
    link = shop.css("a").attribute("href").value
    # binding.pry
    BestCoffeeCinci::Shop.new(name, link)
    end 
  end

  def self.scrape_info(shop)
    doc = Nokogiri::HTML(open(shop.link))
    shop.address = doc.css(".address").text
    shop.hours = doc.css(".hours").text
    shop.description = doc.css(".full-description").text
    end

  end

