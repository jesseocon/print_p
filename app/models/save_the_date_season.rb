class SaveTheDateSeason < ActiveRecord::Base
  attr_accessible :save_the_date_id, :season_id
  belongs_to :save_the_date
  belongs_to :season
end
