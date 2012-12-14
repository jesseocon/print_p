class InvitationPricing < ActiveRecord::Base
  attr_accessible :price, :quantity, :pricing_cat_id
  has_many :invitations
  belongs_to :pricing_cat
  
  scope :name_filter, lambda { |name|InvitationPricing.joins(:pricing_cat).where("name = ?", name) }
  
  def self.order_by_cat
    InvitationPricing.joins(:pricing_cat).order("pricing_cats.name ASC")
  end
  
  def self.price_dropdown_by_cat(name)
    self.name_filter(name)
  end
  
  def get_by_cat(name)
    
  end
  
  def quantity_and_price
    quantity.to_s + " @ " + price.to_s
  end
  
  def total_price
    quantity * price
  end
  
  def per_unit_cost
    price / quantity
  end
  
  def available? 
    self.pricing_cat
  end
  
  def price_cat
    if self.available?
      return self.pricing_cat.name
    else 
      return ""
    end
  end
  
end
