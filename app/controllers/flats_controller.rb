class FlatsController < ApplicationController
  def index
    set_flats
  end

  def show
    set_flats
    @id = params[:id].to_i
    @flat = @flats.find do |flat|
      flat["id"] == @id
    end
  end

  private

  def set_flats
    require "open-uri"

    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end
end
