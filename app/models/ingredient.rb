class Ingredient < ActiveRecord::Base

  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods

  def self.search(search)
    where("name like ?", "%#{search}%")
  end
end
