require 'Date'
#
u1 = User.create!(name: "who", email: "kill@me", password: "password", password_confirmation: "password", image: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/p/4/005/097/21e/11d164d.jpg")
u2 = User.create!(name: "Plip", email: "fuck@this", password: "password", password_confirmation: "password", image: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQCBuBIQlAaXs_7dgvbqzZ75pWTQ3J2N6E_3yVgF7TKEemItG_W")

c1 = Category.create!(name: "Habitat restoration")
c2 = Category.create!(name: "Environmentalism")
c3 = Category.create!(name: "Conservation")
c4 = Category.create!(name: "Urban revitalisation")

p1 = Project.create!(title: "Help the whales eat more nutrients11", user_id: 1, end_date: Date.new(2017, 4, 28), brief: "I'm going to throw meat into the sea so the whales can get more nutrients, I think a pack of 6 richmonds pork saussages should do the trick!!", image: "http://i1.mirror.co.uk/incoming/article3012446.ece/ALTERNATES/s615/Killer-Whale.jpg", video: "https://www.youtube.com/watch?v=Kppx4bzfAaE&index=284&list=PL7XlqX4npddfrdpMCxBnNZXg2GFll7t5y", target_amount: 50 )
p2 = Project.create!(title: "Help the whales eat more nutrients111", user_id: 1, end_date: Date.new(2017, 4, 28), brief: "I'm going to throw meat into the sea so the whales can get more nutrients, I think a pack of 6 richmonds pork saussages should do the trick!!", image: "https://d1kagln5mg73j.cloudfront.net/wp-content/uploads/2015/12/whales-wildlife-1.jpg", video: "", target_amount: 50 )
p3 = Project.create!(title: "Help the whales eat more nutrients1111", user_id: 2, end_date: Date.new(2017, 4, 28), brief: "I'm going to throw meat into the sea so the whales can get more nutrients, I think a pack of 6 richmonds pork saussages should do the trick!!", image: "https://cdn.pixabay.com/photo/2015/06/03/14/24/ladybug-796481_960_720.jpg", video: "", target_amount: 50 )
p4 = Project.create!(title: "Help the whales eat more nutrients10", user_id: 2, end_date: Date.new(2017, 4, 28), brief: "I'm going to throw meat into the sea so the whales can get more nutrients, I think a pack of 6 richmonds pork saussages should do the trick!!", image: "https://cdn.pixabay.com/photo/2014/10/15/15/14/man-489744_960_720.jpg", video: "", target_amount: 50 )

d1 = Donation.create!(user_id: 2, project_id: 1, amount: 25)
