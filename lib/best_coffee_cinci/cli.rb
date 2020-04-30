require 'pry'
class BestCoffeeCinci::CLI 
  
  @@muted="\e[1;31m"
  @@grn="\e[1;32m"
  @@blu="\e[1;34m"
  @@mag="\e[1;35m"
  @@cyn="\e[1;36m"
  @@white="\e[0m"
  
  def call
    list_shops
    get_user_input
    list_locations
    goodbye
  end 
  
  def list_shops
    puts "\n#{@@muted}Need a jolt?  Here are UC's coffee shops:#{@@white}\n"
    @shops = BestCoffeeCinci::Shop.all
    @shops.each.with_index(1) do |shop, index| 
      puts "#{index}. #{shop.name}"
    end
  end 
  
  def get_user_input
    input = nil 
    while input != "exit"
      puts "\n#{@@grn}Please pick the number of the shop you would like more info on, 'shops' to go back to the list, or 'exit' to exit.\n#{@@white}"
      input = gets.strip.downcase 
      
      if input.to_i > 0 
        shops = @shops[input.to_i-1]
        puts "\n#{@@cyn}Location and Phone Number#{@location}\n#{@@white}"
      elsif input == "shops"
        list_shops
      else 
        puts "\n#{@@muted}I'm sorry, I do not recognize your response\n#{@@white}"
      end 
    end 
  end 

  def list_locations
    BestCoffeeCinci::Scraper.scrape_locations
    puts @location
  end
  
  def goodbye
    puts "\n#{@@mag}Have a brew-tiful day!\n#{@@white}"
  end 
end
