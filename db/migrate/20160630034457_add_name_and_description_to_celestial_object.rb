class AddNameAndDescriptionToCelestialObject < ActiveRecord::Migration
  def change
    add_column :celestial_objects, :name, :string
    add_column :celestial_objects, :description, :text
  end
end
