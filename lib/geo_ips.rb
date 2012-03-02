require 'typhoeus'
require 'multi_json'

require 'geo_ips/version'

class GeoIPs
  attr_writer :api_key
  
  def initialize api_key
    @api_key = api_key
  end
  
  def lookup ip
    request(ip)
  end
  
  private
  def request ip
    response = Typhoeus::Request.get("http://api.geoips.com/ip/#{ip}/key/#{@api_key}/output/json")
    
    if response.success?
      parse(response.body)
    else
      raise "Request Error!"
    end
  end
  
  def parse(response)
    MultiJson.decode(fix_response(response))
  end
  
  def fix_response(response_string)
    response_string.gsub(/,\n}$/,"\n}")
  end
end
