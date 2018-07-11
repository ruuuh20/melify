class ArtistsController < ApplicationController

  def index
    RSpotify.authenticate(ENV['CLIENT_ID'], ENV['CLIENT_SECRET'])
    #authenticate before each request?

   if !params[:artist_name].empty?
     @artists = RSpotify::Artist.search(params[:artist_name])
   else
     redirect_to root_path
   end
 end

  def show
  end
end
