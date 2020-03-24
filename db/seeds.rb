require 'open-uri'

# -------------------- TRACKING INFORMATION --------------------
puts "Destroying Pokémans"
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
puts "Generating team..."

team_one = Team.new(name: "Main Team")
team_one.user = user

team_two = Team.new(name: "Battle Mansion Team")
team_two.user = user

team_one.save!
team_two.save!

# -------------------- GENERATING POKÉMON --------------------
puts "Generating Pokémans"

# --------------- Pikachu ---------------
pikachu = Pokemon.new(
  generation: "I",
  pokedex_region: "Johto",
  locations: {
      "sword":
      [
          "Route 4",
          "Rolling Fields",
          "Stony Wilderness",
          {
              "max raid battles":
              [
                  "Giant's Cap",
                  "Giant's Mirror",
                  "Hammerlocke Hills",
                  "Lake of Outrage",
                  "Motostoke Riverbank"
              ]
          }
      ],
      "shield":
      [
          "Route 4 Shield",
          "Rolling Fields",
          "Stony Wilderness",
          {
              "max raid battles":
              [
                  "Giant's Cap",
                  "Giant's Mirror",
                  "Hammerlocke Hills",
                  "Lake of Outrage",
                  "Motostoke Riverbank"
              ]
          }
      ]
  },
  number: 25,
  name: "Pikachu",
  gender: "male",
  types: ["Electric"],
  level: 99,
  evolutions: {"thunderstone": "Raichu"},
  nature: "Calm",
  ability: {
      "name": "Static",
      "description": "The opponent has a 30% chance of being induced with PARALYZE when using an attack, that requires physical contact, against this Pokémon."
  },
  moves: {
      "Thunder Shock": {
          "type": "Electric",
          "category": "Special",
          "attack": 40,
          "accuracy": 100,
          "PP": 30,
          "effect %": 10,
          "description": "A jolt of electricity crashes down on the target to inflict damage. This may also leave the target with paralysis."
      },
      "Thunder Wave": {
          "type": "Electric",
          "category": "Effect",
          "attack": 0,
          "accuracy": 90,
          "PP": 20,
          "effect %": 0,
          "description": "The user launches a weak jolt of electricity that paralyzes the target."
      },
      "Spark": {
          "type": "Electric",
          "category": "Physical",
          "attack": 65,
          "accuracy": 100,
          "PP": 20,
          "effect %": 30,
          "description": "The user throws an electrically charged tackle at the target. This may also leave the target with paralysis."
      },
      "Slam": {
          "type": "Normal",
          "category": "Physical",
          "attack": 80,
          "accuracy": 75,
          "PP": 20,
          "effect %": 0,
          "description": "The target is slammed with a long tail, vines, or the like to inflict damage."
      }
  },
  learnable_moves: {
      "Discharge": {
          "level": 32,
          "type": "Electric",
          "category": "Special",
          "attack": 80,
          "accuracy": 100,
          "PP": 15,
          "effect %": 30,
          "description": "The user strikes everything around it by letting loose a flare of electricity. This may also cause paralysis."
      }
  },
  held_item: "Magnet",
  stats: {
      "HP": 267,
      "Attack": 250,
      "Defense": 136,
      "Speed": 274,
      "Sp. Def": 180,
      "Sp. Attack": 223
  }
)
# -----
pikachu.user = User.last
pikachu.team = Team.last
# -----
pikachu_photo = URI.open("https://res.cloudinary.com/bruncky/image/upload/v1584990964/Pok%C3%A9Rails/Seed%20Images/Pikachu.png")
pikachu_photo_shiny = URI.open("https://res.cloudinary.com/bruncky/image/upload/v1584990964/Pok%C3%A9Rails/Seed%20Images/Pikachu%20Shiny.png")

pikachu.photos.attach(io: pikachu_photo, filename: 'pikachu.png', content_type: 'image/png')
pikachu.photos.attach(io: pikachu_photo_shiny, filename: 'pikachu_shiny.png', content_type: 'image/png')
# -----
pikachu.save!

# --------------- Charizard ---------------
charizard = Pokemon.new(
  generation: "I",
  pokedex_region: "Johto",
  locations: {
      "sword":
      [
          "Route 4",
          "Rolling Fields",
          "Stony Wilderness",
          {
              "max raid battles":
              [
                  "Giant's Cap",
                  "Giant's Mirror",
                  "Hammerlocke Hills",
                  "Lake of Outrage",
                  "Motostoke Riverbank"
              ]
          }
      ],
      "shield":
      [
          "Route 4 Shield",
          "Rolling Fields",
          "Stony Wilderness",
          {
              "max raid battles":
              [
                  "Giant's Cap",
                  "Giant's Mirror",
                  "Hammerlocke Hills",
                  "Lake of Outrage",
                  "Motostoke Riverbank"
              ]
          }
      ]
  },
  number: 6,
  name: "Charizard",
  nickname: "Angry Chicken",
  gender: "male",
  types: ["Fire", "Flying"],
  level: 86,
  evolutions: {"thunderstone": "Raichu"},
  nature: "Calm",
  ability: {
      "name": "Static",
      "description": "The opponent has a 30% chance of being induced with PARALYZE when using an attack, that requires physical contact, against this Pokémon."
  },
  moves: {
      "Thunder Shock": {
          "type": "Electric",
          "category": "Special",
          "attack": 40,
          "accuracy": 100,
          "PP": 30,
          "effect %": 10,
          "description": "A jolt of electricity crashes down on the target to inflict damage. This may also leave the target with paralysis."
      },
      "Thunder Wave": {
          "type": "Electric",
          "category": "Effect",
          "attack": 0,
          "accuracy": 90,
          "PP": 20,
          "effect %": 0,
          "description": "The user launches a weak jolt of electricity that paralyzes the target."
      },
      "Spark": {
          "type": "Electric",
          "category": "Physical",
          "attack": 65,
          "accuracy": 100,
          "PP": 20,
          "effect %": 30,
          "description": "The user throws an electrically charged tackle at the target. This may also leave the target with paralysis."
      },
      "Slam": {
          "type": "Normal",
          "category": "Physical",
          "attack": 80,
          "accuracy": 75,
          "PP": 20,
          "effect %": 0,
          "description": "The target is slammed with a long tail, vines, or the like to inflict damage."
      }
  },
  learnable_moves: {
      "Discharge": {
          "level": 32,
          "type": "Electric",
          "category": "Special",
          "attack": 80,
          "accuracy": 100,
          "PP": 15,
          "effect %": 30,
          "description": "The user strikes everything around it by letting loose a flare of electricity. This may also cause paralysis."
      }
  },
  held_item: "Magnet",
  stats: {
      "HP": 267,
      "Attack": 250,
      "Defense": 136,
      "Speed": 274,
      "Sp. Def": 180,
      "Sp. Attack": 223
  }
)
# -----
charizard.user = User.last
charizard.team = Team.last
# -----
charizard_photo = URI.open("https://res.cloudinary.com/bruncky/image/upload/v1584990965/Pok%C3%A9Rails/Seed%20Images/Charizard.png")
charizard_photo_shiny = URI.open("https://res.cloudinary.com/bruncky/image/upload/v1584990965/Pok%C3%A9Rails/Seed%20Images/Charizard%20Shiny.png")

charizard.photos.attach(io: charizard_photo, filename: 'charizard.png', content_type: 'image/png')
charizard.photos.attach(io: charizard_photo_shiny, filename: 'charizard_shiny.png', content_type: 'image/png')
# -----
charizard.save!
