class ApiCovidTracking
    require 'rest-client'

    def initialize
        @response = response
    end

    def call
        response = RestClient.get 'https://api.covidtracking.com/v1/us/daily.json'
        response_json = JSON.load(response)
        response_json
    end
end