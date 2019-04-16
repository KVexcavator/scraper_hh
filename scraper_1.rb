require 'nokogiri'
require 'byebug'
require 'httparty'

def scraper
  url='https://www.avito.ru/moskva/vakansii'
  url
  unparsed_page=HTTParty.get(url)
  parsed_page=Nokogiri::HTML(unparsed_page)
  job_categori=parsed_page.css('div .rubricator-link-3w6_y')
  categori_listing={}
  categori_listing.each do |job_categori|
    
  end
  byebug
end

scraper
