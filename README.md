# GeoIPs

Ruby library to interact with the [GeoIPS.com](http://www.geoips.com/developer) IP geo-location API. 

### Note
I have no association with the company running this service. All support questions not related to the library itself should be forwarded to them.

## Installation

Add this line to your application's Gemfile:

    gem 'geo_ips'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install geo_ips

## Usage

    require 'geo_ips'
    require 'yajl' # The library uses multi_json, so this is recommended, but not required.
    
    @geoips = GeoIPs.new("your-api-key-here")
    @geoips.lookup("66.147.244.214")
    
    #=> { "status" : "Success", 
    #     "ip" : "66.147.244.214", 
    #     "hostname" : "box714.bluehost.com", 
    #     "owner" : "BLUEHOST INC.", 
    #     "continent_name" : "NORTH AMERICA", 
    #     "continent_code" : "NA", 
    #     "country_name" : "UNITED STATES", 
    #     "country_code" : "US", 
    #     "region_name" : "UTAH", 
    #     "region_code" : "UT", 
    #     "county_name" : "UTAH", 
    #     "city_name" : "PROVO", 
    #     "latitude" : "40.3402", 
    #     "longitude" : "-111.6073" }

## Testing
To test the library, you'll need to [signup for an API key](http://www.geoips.com/auth/register) and place the key in a file called `.api_key` in the root directory of the library.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
