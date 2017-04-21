require 'Date'
#
u1 = User.create!(name: "who", email: "kill@me", password: "password", password_confirmation: "password", image: File.open(File.join(Rails.root, "db/images/alexchin.jpg")))
u2 = User.create!(name: "Plip", email: "fuck@this", password: "password", password_confirmation: "password",image: File.open(File.join(Rails.root, "db/images/alexchin2.jpg")))
u2 = User.create!(name: "Dev", email: "dev@patel", password: "password", password_confirmation: "password",image: File.open(File.join(Rails.root, "db/images/devpatel.jpg")))

c1 = Category.create!(name: "Habitat restoration")
c2 = Category.create!(name: "Environmentalism")
c3 = Category.create!(name: "Conservation")
c4 = Category.create!(name: "Urban revitalisation")

p1 = Project.create!(title: "Help the whales eat more nutrients11", user_id: 1, end_date: Date.new(2017, 4, 28), brief: "I'm going to throw meat into the sea so the whales can get more nutrients, I think a pack of 6 richmonds pork saussages should do the trick!!", image: File.open(File.join(Rails.root, "db/images/alexchin2.jpg")), video: "https://www.youtube.com/embed/XGSy3_Czz8k?playlist=XGSy3_Czz8k&loop=1", target_amount: 50 )
p2 = Project.create!(title: "Help the whales eat more nutrients111", user_id: 1, end_date: Date.new(2017, 4, 28), brief: "I'm going to throw meat into the sea so the whales can get more nutrients, I think a pack of 6 richmonds pork saussages should do the trick!!", image: File.open(File.join(Rails.root, "db/images/alexchin2.jpg")), video: "https://www.youtube.com/embed/vAPEs5i94Ck", target_amount: 50 )
p3 = Project.create!(title: "Help the whales eat more nutrients1111", user_id: 2, end_date: Date.new(2017, 4, 28), brief: "I'm going to throw meat into the sea so the whales can get more nutrients, I think a pack of 6 richmonds pork saussages should do the trick!!", image: File.open(File.join(Rails.root, "db/images/alexchin2.jpg")), video: "", target_amount: 50 )
p4 = Project.create!(title: "Help the whales eat more nutrients10", user_id: 3, end_date: Date.new(2017, 4, 28), brief: "I'm going to throw meat into the sea so the whales can get more nutrients, I think a pack of 6 richmonds pork saussages should do the trick!!", image: File.open(File.join(Rails.root, "db/images/alexchin2.jpg")), video: "", target_amount: 50 )

d1 = Donation.create!(user_id: 2, project_id: 1, amount: 25)

# image: File.open(File.join(Rails.root, "db/images/alexchin.jpg")),
