class Ticket < ActiveRecord::Base
  attr_accessible :description, :title, :assets_attributes
  validates :title, :presence => true
  validates :description, :presence => true
  validates :description, :presence => true, :length => { :minimum => 10 }
  belongs_to :project
  belongs_to :state
  belongs_to :user
  has_many :assets
  has_many :comments
  accepts_nested_attributes_for :assets
end
