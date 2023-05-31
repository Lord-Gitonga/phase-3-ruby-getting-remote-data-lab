# Write your code here
require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
    def initialize
        @base_url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"
    end

    def get_response_body 
        uri = URI.parse(@base_url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        # programs = JSON.parse(self.get_response_body)
        # programs.collect do |program|
        #     program["name"]
        # end
        response_body = get_response_body
        JSON.parse(response_body)

    end

end

programs = GetRequester.new
puts programs.parse_json