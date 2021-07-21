class CovidTrackingController < ApplicationController

    def index
        response = RestClient.get 'https://api.covidtracking.com/v1/us/daily.json'
        response_json = JSON.load(response)
        last_day = response_json[0]
        @date = last_day['date']
        @total_deaths = last_day['death']
        @total_hospitalized = last_day['hospitalized']
        @daily_deaths = last_day['deathIncrease']
        @daily_hospitalized = last_day['hospitalizedIncrease']
    end
end
