users_list = [
	[ "admin@mail.com", "admin1423", "admin1423" ],
	[ "asdf@asdf.com", "asdfasdf", "asdfasdf" ]
]

users_list.each do |email, password, confirmation|
	User.create(email: email, password: password, password_confirmation: confirmation)
end

companies_list = [
	[ "NewCars", "Sprzedajemy nowe samochody.", "Gdańsk, ul. Grunwaldzka 421" ],
	[ "LikeNew Cars", "Zajmujemy się sprzedażą samochodów używanych.", "Sopot, aleja Niepodległości 832" ],
	[ "BMW Kraków", "Sprzedajemy nowe i używane samochody marki BMW.", "Kraków" ]
]

companies_list.each do |name, description, address|
	Company.create(name: name, description: description, address: address)
end

cars_list = [
	[ "BMW", "M3 F30", 3, "https://storage.googleapis.com/samochody/BMW-M3-F30.jpg" ],
	[ "Audi", "A8 D4", 1, "https://storage.googleapis.com/samochody/Audi-A8-D4.jpg" ],
	[ "Mercedes-Benz", "Klasa S W222", 1, "https://storage.googleapis.com/samochody/W222-Mercedes.jpg" ],
	[ "BMW", "Seria 7 G11", 3, "https://storage.googleapis.com/samochody/BMW-7-G11.jpg" ],
	[ "Audi", "R8", 1, "https://storage.googleapis.com/samochody/Audi-R8.jpg" ],
	[ "Lucid", "Air", 1, "https://storage.googleapis.com/samochody/Lucid-Air.jpg" ],
	[ "Audi", "A4 B9", 1, "https://storage.googleapis.com/samochody/Audi-A4-B9.jpg" ],
	[ "Audi", "A6 C7", 2, "https://storage.googleapis.com/samochody/Audi-A6-C7.jpg" ],
	[ "BMW", "Seria 5 E34", 2, "https://storage.googleapis.com/samochody/BMW-E34.jpg" ],
	[ "BMW", "Seria 5 E39", 2, "https://storage.googleapis.com/samochody/BMW-E39.jpg" ],
	[ "BMW", "Seria 5 E60", 3, "https://storage.googleapis.com/samochody/BMW-E60.jpg" ],
	[ "BMW", "Seria 5 F10", 3, "https://storage.googleapis.com/samochody/BMW-F10.jpg" ],
	[ "Mercedes-Benz", "W124", 2, "https://storage.googleapis.com/samochody/Mercedes-W124.jpg" ],
	[ "Mercedes-Benz", "Klasa S W220", 2, "https://storage.googleapis.com/samochody/Mercedes-W220.jpg" ]
]

cars_list.each do |make, model, company_id, image|
	Car.create( make: make, model: model, company_id: company_id, image: image )
end