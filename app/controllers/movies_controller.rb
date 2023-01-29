class MoviesController < ApplicationController
    require "open-uri"

	def index
		agent = Mechanize.new
        page = agent.get("https://movie.jorudan.co.jp/film/pre/")
        @elements  = page.search('.item-body a')

	end
end