class SaveTheDateColor < ActiveRecord::Base
  attr_accessible :color_id, :save_the_date_id
  belongs_to :color
  belongs_to :save_the_date
end
