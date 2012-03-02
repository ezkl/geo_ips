require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "GeoIPs" do
  before(:all) do
    @api_key = File.read(File.dirname(__FILE__) + '/../.api_key')
  end
  
  it "should require an API key at initialization" do
    expect { GeoIPs.new }.to raise_error
  end
  
  describe "#lookup", :vcr => 'geoips_response' do
    before(:all) do
      @geo_ips = GeoIPs.new(@api_key)
    end
    
    it "should respond to lookup" do
      @geo_ips.respond_to?(:lookup).should be true
    end
    
    it "should require an IP" do
     expect { @geo_ips.lookup }.to raise_error
    end
    
    it "should respond with 13 items" do
      @geo_ips.lookup("8.8.8.8").should have(13).items
    end
  end
end