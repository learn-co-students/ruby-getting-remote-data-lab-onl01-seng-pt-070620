require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  
  URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
  
  def initialize(url)
    @url = url
    URL 
  end
  
  def get_response_body
    uri = URI.parse(@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end
  
  def parse_json
    data = JSON.parse(self.get_response_body)
    data.collect do |data|
      data
    end
  end
  
end
  
  
