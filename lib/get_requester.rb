# Write your code here
require 'open-uri'
require 'net/http'
require 'json'


class GetRequester
  attr_accessor :url

  def initialize(url)
    @url = url
  end

  def get_response_body
    url = @url
    uri = URI.parse(url)
    response = Net::HTTP.get_response(uri)
    return response.body
  end

  def parse_json
    responseBody = get_response_body()
    JSON.parse(responseBody)
  end

end
