require_relative "best_coffee_cinci/version"
require_relative "best_coffee_cinci/cli"
require_relative "best_coffee_cinci/scraper"

require 'pry'
require 'nokogiri'

module BestCoffeeCinci
  class Error < StandardError; end
  # Your code goes here...
end


require_relative "london_spas/version"
require_relative "london_spas/cli"