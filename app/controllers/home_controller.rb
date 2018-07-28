class HomeController < ApplicationController

  def spotify
    # @resp = Faraday.get 'https://api.spotify.com/v1/browse/new-releases' do |req|
    #   req.params['client_id'] = ENV['CLIENT_ID']
    #   req.params['client_secret'] = ENV['CLIENT_SECRET']
    # end
    # render :home
    RSpotify.authenticate(ENV['CLIENT_ID'], ENV['CLIENT_SECRET'])
    #authenticate before each request?


     @new_releases = RSpotify::Album.new_releases(country: 'US')
     # raise inspect.params
     render :home


  end

  def index

  end
end
