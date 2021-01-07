require "open-uri"

class FlatsController < ApplicationController
  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end

  def show
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    flats = JSON.parse(open(url).read)

    # how to find one specific flat from my last of flats?
    # look for the flat in the array of flats based on its id
    flat_id = params[:id].to_i
    @flat = flats.find { |flat| flat["id"] == flat_id }
    # can search through my `flats` array and find the one with the same id
  end
end
