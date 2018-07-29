class AlbumsController < ApplicationController

def index
end


def show
  @album = RSpotify::Album.find(params[:id])
end

def tracks
   
end

end
