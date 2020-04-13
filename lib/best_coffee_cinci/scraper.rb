class BestCoffeeCinci::Scraper
  
  attr_accessor :shop, :address, :url
  
  # def self.all_shops
  #   doc = Nokogiri::HTML(open("http://kematis.com/coffee-near-me/coffee-shops-in-cincinnati-ohio/"))
 
  #   shop = doc.css("div.color#333333")
  # end 
  
  # def self.scrape_address
  #   doc = Nokogiri::HTML(open("https://twodrifters.us/blog/best-coffee-shops-in-cincinnati-ohio.html"))
    
  #   address = self.new 
  #   shop_address = doc.css("div.arconix-box.arconix-box-gray").text.gsub(/\t/, "")
    
  #   address
  # end 
  
  # def self.all_shops
  #   doc = Nokogiri::HTML(open("http://kematis.com/coffee-near-me/coffee-shops-in-cincinnati-ohio/"))
  #   shops = doc.css("td#align") 
    
  #   shops.each do |s|
  #   name = s.text
  #   ref = s.attr("value")
  #   BestCoffeeCinci::Shop.new(name, ref)
  #   end 
  # end 
  
  def self.all_shops(url)
    shops = shop.new 
    
    doc = Nokogiri::HTML(open(url))
    name = doc.search("").text
  end 
  
end 