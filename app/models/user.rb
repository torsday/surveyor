class User < ActiveRecord::Base

  has_many :surveys, :foreign_key => "author_id"
  has_many :results, :foreign_key => "respondent_id"

  attr_accessible :email, :password
  
  validates_presence_of :email, :password
  validates_uniqueness_of :email

  has_secure_password
  
end
