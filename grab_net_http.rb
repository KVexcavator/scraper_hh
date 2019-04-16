require 'uri'
require 'net/http'
require 'ostruct'
require 'byebug'

def get_url_response(url)
  uri = URI(url)
  request = Net::HTTP.get_response(uri)
  return request
rescue Errno::ECONNREFUSED => e
  OpenStruct.new(code: 404)
end

response = get_url_response('https://stackoverflow.com/')
response.code
response.body.size
response['Content-type']

byebug

grab