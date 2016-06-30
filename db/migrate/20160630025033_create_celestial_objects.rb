class CreateCelestialObjects < ActiveRecord::Migration
  def change
    create_table :celestial_objects do |t|

      t.timestamps null: false
    end
  end
end
