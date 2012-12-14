class ProgramStyle < ActiveRecord::Base
  attr_accessible :program_id, :style_id
  belongs_to :program
  belongs_to :style
end
