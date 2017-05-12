class Company < ApplicationRecord

	has_one :user
	has_many :cars

	validates :name, presence: true, length: { minimum: 2 }
	validates :description, presence: true
	validates :address, presence: true

	geocoded_by :address
	after_validation :geocode

end
