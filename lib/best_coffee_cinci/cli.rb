class BestCoffeeCinci::CLI 
  
  def call
    puts "Need a jolt?  Here are Cincinnati's best coffee shops!"
    @input = ""
    until @input == "exit"
      get_shops 
      list_shops
      get_user_input
      get_shop_info
    end 
    goodbye
  end 
  
  def get_shops
    @shops = Shop.all
  end 
  
  def list_shops
    
  end 
  
  def get_user_input
  end 
  
  def get_shop_info
  end 
  
    def goodbye
    puts "Have a brew-tiful day!"
  end 
end
  
end