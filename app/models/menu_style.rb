class MenuStyle < ActiveRecord::Base
  attr_accessible :menu_id, :style_id
  belongs_to :menu
  belongs_to :style
end
