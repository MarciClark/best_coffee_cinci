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
    goodbye
  end 
  
  # def list_shops
  #   puts "\n#{@@blu}Need a jolt?  Here are Cincinnati's best coffee shops!#{@@white}\n"
  #   @shops = ['Coffee Emporium', '1215 Wine Bar and Coffee Lab', 'Coffee Emporium 2', 'Urbana Coffee', 'Collective Espresso', 'Deeper Roots Coffee', 'Sidewinder Coffee + Tea', 'BLOC Coffee Company', 'Luckman Coffee Company', 'Collective Espresso 2', 'Deeper Roots 2', 'Highland Coffee House', 'Rohs Street Coffee', 'Starbucks', 'Kittys Coffee']
  #   @shops.each.with_index(1) do |shop, index| 
  #     puts "#{index}. #{shop}"
  #   end
  # end 
  
  def list_shops
    puts "\n#{@@blu}Need a jolt?  Here are UC's coffee shops!#{@@white}\n"
    @shops = BestCoffeeCinci::Scraper.scrape_shops
    @shops.each.with_index(1) do |shop, index| 
      puts "#{index}. #{shop}"
    end
  end 
  
  def get_user_input
    input = nil 
    while input != "exit"
      puts "\n#{@@grn}Please pick the number of the shop you would like more info on or 'exit' to exit.\n#{@@white}"
      input = gets.strip.downcase 
      
      if input.to_i > 0 
        shops = @shops[input.to_i-1]
        puts "Shop Name: #{@shop}"
        puts "Location: #{@address}"
        puts "Hours: #{@hours}"
      elsif input == "shops"
        list_shops
      else 
        puts "I'm sorry, I do not recognize your response"
      end 
    end 
  end 
  
  def goodbye
    puts "\n#{@@mag}Have a brew-tiful day!\n#{@@white}"
  end 
end
