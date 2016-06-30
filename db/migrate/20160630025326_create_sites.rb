class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.text :description
      t.float :latitude
      t.float :longitude
      t.references :observation, index: true

      t.timestamps null: false
    end
  end
end
