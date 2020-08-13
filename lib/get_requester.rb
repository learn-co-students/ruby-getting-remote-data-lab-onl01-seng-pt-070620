require 'net/http'
require 'open-uri'
require 'json'
require 'pry'

class GetRequester

    URL =  "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
       results = JSON.parse(self.get_response_body)
       results
    end

end
