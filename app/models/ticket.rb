class Ticket < ActiveRecord::Base
  attr_accessible :description, :title
  validates :title, :presence => true
  validates :description, :presence => true
  validates :description, :presence => true, :length => { :minimum => 10 }
end
