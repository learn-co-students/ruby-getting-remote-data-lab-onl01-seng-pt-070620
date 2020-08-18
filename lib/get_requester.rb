# Write your code here
require 'pry'
require 'net/http'
require 'open-uri'
require 'json'
class GetRequester 
    #will be able to take in a URL on initialization and send an HTTP GET request on command. 
    def initialize(url)
    end 
  
    URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
        
    end
    def parse_json
        JSON.parse(self.get_response_body)
    end 
    #You will also need to build a method for dealing with requests that return JSON
    
end 