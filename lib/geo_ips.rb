require 'typhoeus'
require 'multi_json'

class GeoIPs
  
  BASE_URI = 'http://api.geoips.com'
    
  attr_writer :api_key
  
  def initialize api_key
    @api_key = api_key
  end
  
  def lookup ip
    request(ip)
  end
  
  private
  def request ip
    response = Typhoeus::Request.get("#{BASE_URI}/ip/#{ip}/key/#{@api_key}/output/json")
    
    if response.success?
      parse(response.body)
    else
      raise "Request Error!"
    end
  end
  
  def parse response
    MultiJson.decode(response)
  end
end

require 'geo_ips/version'
