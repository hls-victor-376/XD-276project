class GeomapsController < ApplicationController
  def index
  	@hash = Gmaps4rails.build_markers(@users) do |user, marker|
  		marker.lat user.latitude
  		marker.lng user.longitude
  	end
  end

  def directions
  	#render json: Yelp.client.search('Coquitlam')
  end
end
