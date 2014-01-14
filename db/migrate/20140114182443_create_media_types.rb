class CreateMediaTypes < ActiveRecord::Migration
  def change
    create_table :media_types do |t|
      t.integer :id
      t.string :type

      t.timestamps
    end
  end
end
