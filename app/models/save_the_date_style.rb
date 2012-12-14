class SaveTheDateStyle < ActiveRecord::Base
  attr_accessible :save_the_date_id, :style_id
  belongs_to :save_the_date
  belongs_to :style
end
