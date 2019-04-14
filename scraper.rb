require 'nokogiri'
require 'byebug'
require 'httparty'

def scraper
  url='https://www.avito.ru/moskva/vakansii/'
  unparsed_page=HTTParty.get(url)
  parsed_page=Nokogiri::HTML(unparsed_page)
  byebug
end

scraper
