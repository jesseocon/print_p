class InvitationAsset < ActiveRecord::Base
  attr_accessible :asset_id, :invitation_id
  belongs_to :invitation
  belongs_to :asset
end
