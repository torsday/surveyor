class Question < ActiveRecord::Base
  attr_accessible :description, :survey

  belongs_to :survey
end
