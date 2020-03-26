require 'open-uri'

# -------------------- TRACKING INFORMATION --------------------
puts "Destroying Pokémans..."
Pokemon.destroy_all

puts "Destroying teams..."
Team.destroy_all

puts "Destroying users..."
User.destroy_all

puts "--------------------"

# -------------------- GENERATING USER --------------------
puts "Generating user..."

user = User.create!(username: "bruncky", email: "bruncky@gmail.com", password: "DsRSu90wAD287$")
# -------------------- GENERATING TEAMS --------------------
puts "Generating teams..."

team_one = Team.new(name: "Main Team")
team_one.user = user

team_two = Team.new(name: "Battle Mansion Team")
team_two.user = user

team_one.save!
team_two.save!
