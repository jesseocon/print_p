class MenuColor < ActiveRecord::Base
  attr_accessible :color_id, :menu_id
  belongs_to :menu
  belongs_to :color
end
