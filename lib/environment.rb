require_relative "./best_coffee_cinci/version"
require_relative "./best_coffee_cinci/cli"
require_relative "./best_coffee_cinci/scraper"
require_relative "./best_coffee_cinci/address"

require 'nokogiri'
require 'open-uri'
require 'pry'

module EdenEvents
  class Error < StandardError; end
  # Your code goes here...
end