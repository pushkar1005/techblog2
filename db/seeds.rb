
/
User.create!(name: "Pushkar",
			 email: "pushkar@gmail.com",
			 password: "coding",
			 password_confirmation: "coding",
			 )
99.times do |n|
	name = Faker::Name.name
	email = Faker::Internet.safe_email
	password = "password"
	User.create!(name: name,
				email: email, 
				password: password, 
				password_confirmation: password)
end
*/

/
users = User.order(:created_at).take(6)
50.times do
	title = Faker::Lorem.sentences(1)
	content = Faker::Lorem.sentence(5)
	users.each { |user| user.posts.create!(title:title, content: content) }
end