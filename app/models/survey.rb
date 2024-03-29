class Survey < ActiveRecord::Base
  
  belongs_to :author, :class_name => "User", :foreign_key => "author_id"
  has_many :questions

  attr_accessible :title, :author

end
