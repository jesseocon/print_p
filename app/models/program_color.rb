class ProgramColor < ActiveRecord::Base
  attr_accessible :color_id, :program_id
  belongs_to :color
  belongs_to :program
end
