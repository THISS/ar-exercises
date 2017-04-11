class Store < ActiveRecord::Base
  has_many :employees
  validates_associated :employees
  validates :name, length: { minimum: 3 }
  # an rev is an int and greater than 0
  validates :annual_revenue, numericality: { 
    only_integer: true,
    greater_than_or_equal_to: 0 
  }
  validate :must_carry_clothing_for_at_least_one_gender
 
  def must_carry_clothing_for_at_least_one_gender
    if !(self.mens_apparel || self.womens_apparel)
      errors.add(:gender_apparel, "We need some clothing for the people")
    end
  end
end
