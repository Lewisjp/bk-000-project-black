class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :title
      t.integer :year
      t.string :imdb_url
      t.string :agency_credit
      t.string :artist_credit

      t.timestamps
    end
  end
end
