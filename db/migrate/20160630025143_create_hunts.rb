class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|
      t.references :celestial_object, index: true
      t.references :observation, index: true

      t.timestamps null: false
    end
  end
end
