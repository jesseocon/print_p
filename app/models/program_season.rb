class ProgramSeason < ActiveRecord::Base
  attr_accessible :program_id, :season_id
  belongs_to :program
  belongs_to :season
end
