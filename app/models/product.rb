class Product < ApplicationRecord

	# image
	has_one_attached :image

	default_scope { order(created_at: :desc) }

	# simple validation
	validates_presence_of :name, :description, :price, :stock

end
