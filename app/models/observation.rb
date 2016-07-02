class Observation < ActiveRecord::Base
  has_many :hunts
  has_many :hunted_objects, through: :hunts
  has_many :finds
  has_many :found_objects, through: :finds

  def hunted_objects_list
    hunted_objects_names = hunted_objects.collect { |ho| ho.name.capitalize }
    hunted_objects_names.join(',')
  end

  def hunted_objects_list=(hunted_objects_names)
    uniq_hunted_objects = hunted_objects_names.downcase.split(',').collect { |hon| hon.strip.downcase }
    uniq_hunted_objects.uniq!
    self.hunted_objects = uniq_hunted_objects.collect { |uho| CelestialObject.find_or_create_by(name: uho) }
  end

  def found_objects_list
    found_objects_names = found_objects.collect { |fo| fo_object.name.capitalize }
    found_objects_names.join(',')
  end

  def found_objects_list=(found_objects_names)
    uniq_found_objects = found_objects_names.downcase.split(',').collect { |fon| fon.strip.downcase }
    uniq_found_objects.uniq!
    self.found_objects = uniq_found_objects.collect { |ufo| CelestialObject.find_or_create_by(name: ufo) }
  end
end
