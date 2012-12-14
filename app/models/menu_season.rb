class MenuSeason < ActiveRecord::Base
  attr_accessible :menu_id, :season_id
  belongs_to :menu
  belongs_to :season
  
end
