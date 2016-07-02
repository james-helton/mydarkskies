class Find < ActiveRecord::Base
  belongs_to :found_object, class_name: 'CelestialObject', foreign_key: 'celestial_object_id'
  belongs_to :observation
end
