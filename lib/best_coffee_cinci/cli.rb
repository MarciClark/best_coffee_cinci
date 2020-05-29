require 'word_wrap'
require 'word_wrap/core_ext'

class BestCoffeeCinci::CLI 
  
  def call
    list_shops
    get_user_input
  end 
  
  def list_shops
    puts "Need a jolt?  Here are Cincinnati's Top 9 Coffee Shops:".colorize(:green)
    @shops = BestCoffeeCinci::Shop.all
    @shops.each.with_index(1) do |shop, index| 
      puts "#{index}.#{shop.name}"
    end
  end 

  def list_info(shop)
    puts "ⅽ[ː̠̈ː̠̈]".colorize(:light_red) + "#{shop.name}".colorize(:color => :cyan, :background => :gray) + " ⅽ[ː̠̈ː̠̈]".colorize(:light_red)
    puts "#{shop.description}".fit 100
    puts "Address: ".colorize(:light_blue) + "#{shop.address}"
    puts "Hours: ".colorize(:light_blue) + "#{shop.hours}"
  end

  # "Description: ".colorize(:light_blue) +

  def get_user_input
    input = nil 
    while input != "exit"
      puts "Please pick the number of the shop you would like more info on, 'shops' to go back to the list, 'exit' to leave.".colorize(:yellow)
      input = gets.chomp.downcase 
      
      if input.to_i > 0 && input.to_i <= 9
        shop = @shops[input.to_i-1]
        BestCoffeeCinci::Scraper.scrape_info(shop)
        list_info(shop)
      elsif input == "shops"
        list_shops
      elsif input == "exit"
        goodbye
      else 
        puts "I'm sorry, I do not recognize your response.".colorize(:light_red)
      end 
    end 
  end 
  
  def goodbye
    puts "Have a brew-tiful day!".colorize(:magenta)
  end  
end 