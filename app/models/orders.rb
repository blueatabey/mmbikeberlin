class Order < ApplicationRecord::Base
	belongs_to :product
	belongs_to :user
end	
