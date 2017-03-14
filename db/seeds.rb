users_list = [
	[ "admin@mail.com", "admin1423", "admin1423" ],
	[ "asdf@asdf.com", "asdfasdf", "asdfasdf" ]
]

users_list.each do |email, password, confirmation|
	User.create(email: email, password: password, password_confirmation: confirmation)
end

cars_list = [
	[ "BMW", "M3 F30", "https://dl.dropboxusercontent.com/u/88070560/BMW-M3-F30.jpg" ],
	[ "Audi", "A8 D4", "https://dl.dropboxusercontent.com/u/88070560/Audi-A8-D4.jpg" ],
	[ "Mercedes-Benz", "Klasa S W222", "https://dl.dropboxusercontent.com/u/88070560/Mercedes-S-W222.jpg" ],
	[ "BMW", "Seria 7 G11", "https://dl.dropboxusercontent.com/u/88070560/BMW-7-G11.jpg" ],
	[ "Audi", "R8", "https://dl.dropboxusercontent.com/u/88070560/Audi-R8.jpg" ],
	[ "Lucid", "Air", "https://dl.dropboxusercontent.com/u/88070560/lucid-air.jpg" ]
]

cars_list.each do |make, model, image|
	Car.create( make: make, model: model, image: image )
end