class Company < ApplicationRecord

	has_many :cars

	geocoded_by :address
	after_validation :geocode

end
