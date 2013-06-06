class BrainCandy < ActiveRecord::Base
  attr_accessible :name, :difficulty_level_id

  validates_presence_of :name
  validates_uniqueness_of :name, case_sensitive: false

  belongs_to :difficulty_level

  delegate :name, to: :difficulty_level, prefix: true, allow_nil: true
end
