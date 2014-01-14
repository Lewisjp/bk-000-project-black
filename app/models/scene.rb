class Scene < ActiveRecord::Base
  attr_accessible :agency_credit, :artist_credit, :imdb_url, :title, :year
end
