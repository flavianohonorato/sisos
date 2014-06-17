class Order < ActiveRecord::Base
  belongs_to :author
  belongs_to :category
  
  attr_accessible :name, :description, :author, :category
  validates_presence_of :description, :status, :author, :category
end
