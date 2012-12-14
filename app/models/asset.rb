class Asset < ActiveRecord::Base
  attr_accessible :fp_filename, :fp_isWriteable, :fp_mimetype, :fp_size, :fpurl
  
  has_many :invitation_assets
  has_many :invitations, through: :invitation_assets
end
