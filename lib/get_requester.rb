class GetRequester

    require 'net/http'
    require 'open-uri'
    require 'json'
    require 'pry'

    attr_accessor :url

    url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        name_job = JSON.parse(self.get_response_body)
        name_job
    end

end