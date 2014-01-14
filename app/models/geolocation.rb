class Geolocation < ActiveRecord::Base
  attr_accessible :address, :borough, :latitude, :longitude, :neighborhood
end
