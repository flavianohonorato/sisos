class Client < ActiveRecord::Base
	attr_accessible :name, :email, :phone, :birthday, :address
	validates_presence_of :name, :phone
end