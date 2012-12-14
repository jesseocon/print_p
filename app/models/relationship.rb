class Relationship < ActiveRecord::Base
  attr_accessible :alpha_id, :beta_id
  belongs_to :alpha, class_name: "Invitation" #followed
  belongs_to :beta, class_name: "Invitation" #follower
  
  validates :alpha_id, presence: true 
  validates :beta_id, presence: true
end
