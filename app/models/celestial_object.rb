class CelestialObject < ActiveRecord::Base
  before_save :downcase_name

  def downcase_name
    name.downcase!
  end
end
