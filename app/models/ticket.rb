class Ticket < ActiveRecord::Base
  attr_accessible :description, :title, :asset
  validates :title, :presence => true
  validates :description, :presence => true
  validates :description, :presence => true, :length => { :minimum => 10 }
  belongs_to :project
  belongs_to :user
  has_attached_file :asset
end
