class Product < ApplicationRecord

	default_scope { order(created_at: :desc) }

	# simple validation
	validates_presence_of :name, :description, :price, :stock

end
