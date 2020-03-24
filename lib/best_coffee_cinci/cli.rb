class BestCoffeeCinci::CLI 
  
  def call
      list_shop
      get_user_input
      get_shop_address
      show_more
      goodbye
  end 
  
  def list_shop
    puts "Need a jolt?  Here are Cincinnati's best coffee shops!"
    @shops = ['Coffee Emporium', '1215 Wine Bar and Coffee Lab', 'Coffee Emporium 2', 'Urbana Coffee', 'Collective Espresso', 'Deeper Roots Coffee', 'Sidewinder Coffee + Tea', 'BLOC Coffee Company', 'Luckman Coffee Company', 'Collective Espresso 2', 'Deeper Roots 2', 'Highland Coffee House', 'Rohs Street Coffee', 'Starbucks', 'Kittys Coffee']
    @shops.each.with_index(1) do |shop, index| 
      puts "#{index}. #{shop}"
    end
  end 
  
  def get_user_input
    input = nil 
    while input != "exit"
      puts "Which shop would you like to go to?"
      input = gets.strip.downcase 
      
      if input.to_i > 0 
        shops = @shops[input.to_i-1]
        puts "#{@shop.address}"
      elseif input == "shops"
        list_shops
      else 
        puts "I'm sorry, I do not recognize your response"
      end 
    end 
  end 
  
  def goodbye
    puts "Have a brew-tiful day!"
  end 

  
end


  # show_shop_info = show_shop_address
  # get_shop_info = get_shop_address
  # shop_info = shop_address