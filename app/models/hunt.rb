class Hunt < ActiveRecord::Base
  belongs_to :hunted_object, class_name: "CelestialObject", foreign_key: "celestial_object_id"
  belongs_to :observation
end
