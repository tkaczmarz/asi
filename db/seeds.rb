users_list = [
	[ "admin@mail.com", "admin1423", "admin1423" ],
	[ "asdf@asdf.com", "asdfasdf", "asdfasdf" ]
]

users_list.each do |email, password, confirmation|
	User.create(email: email, password: password, password_confirmation: confirmation)
end

cars_list = [
	[ "BMW", "M3 F30", "https://storage.googleapis.com/samochody/BMW-M3-F30.jpg" ],
	[ "Audi", "A8 D4", "https://storage.googleapis.com/samochody/Audi-A8-D4.jpg" ],
	[ "Mercedes-Benz", "Klasa S W222", "https://storage.googleapis.com/samochody/W222-Mercedes.jpg" ],
	[ "BMW", "Seria 7 G11", "https://storage.googleapis.com/samochody/BMW-7-G11.jpg" ],
	[ "Audi", "R8", "https://storage.googleapis.com/samochody/Audi-R8.jpg" ],
	[ "Lucid", "Air", "https://storage.googleapis.com/samochody/Lucid-Air.jpg" ],
	[ "Audi", "A4 B9", "https://storage.googleapis.com/samochody/Audi-A4-B9.jpg" ],
	[ "Audi", "A6 C7", "https://storage.googleapis.com/samochody/Audi-A6-C7.jpg" ],
	[ "BMW", "Seria 5 E34", "https://storage.googleapis.com/samochody/BMW-E34.jpg" ],
	[ "BMW", "Seria 5 E39", "https://storage.googleapis.com/samochody/BMW-E39.jpg" ],
	[ "BMW", "Seria 5 E60", "https://storage.googleapis.com/samochody/BMW-E60.jpg" ],
	[ "BMW", "Seria 5 F10", "https://storage.googleapis.com/samochody/BMW-F10.jpg" ],
	[ "Mercedes-Benz", "W124", "https://storage.googleapis.com/samochody/Mercedes-W124.jpg" ],
	[ "Mercedes-Benz", "Klasa S W220", "https://storage.googleapis.com/samochody/Mercedes-W220.jpg" ]
]

cars_list.each do |make, model, image|
	Car.create( make: make, model: model, image: image )
end