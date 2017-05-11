class Company < ApplicationRecord

	has_one :user
	has_many :cars

	validates :name, presence: true, length: { minimum: 2 }

	geocoded_by :address
	after_validation :geocode

end
