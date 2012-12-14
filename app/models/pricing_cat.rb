class PricingCat < ActiveRecord::Base
  attr_accessible :name
  has_many :invitation_pricings
  
  scope :name_sort, lambda { order('name ASC') }
  scope :get_name, lambda { where(name: "Enclosure Cards")}
  
  
end
