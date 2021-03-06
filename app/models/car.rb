class Car < ApplicationRecord
	
	belongs_to :company

	validates :make, presence: true
	validates :model, presence: true
	VALID_IMAGE_REGEX = /https?:\/\/([a-z]*.)+(jpg|png|jpeg)/i
	validates :image, presence: true
end
