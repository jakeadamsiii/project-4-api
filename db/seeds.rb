# u1 = User.create!(name: "alex chin", email: "jake@jake", password: "password", password_confirmation: "password", image: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/p/4/005/097/21e/11d164d.jpg")
# u2 = User.create!(name: "Phillip", email: "kake@kake", password: "password", password_confirmation: "password", image: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQCBuBIQlAaXs_7dgvbqzZ75pWTQ3J2N6E_3yVgF7TKEemItG_W")
#
# c1 = Category.create!(name: "Environmentalism2")

p1 = Project.create!(title: "Help the whales eat more nutrient", user_id: 1, end_date: Date.new(2017, 4, 28), brief: "I'm going to throw meat into the sea so the whales can get more nutrients, I think a pack of 6 richmonds pork saussages should do the trick!!", image: "", video: "", target_amount: 50 )

d1 = Donation.create!(user_id: 2, project_id: 1, amount: 25)
