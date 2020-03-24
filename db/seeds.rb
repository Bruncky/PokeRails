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

# -------------------- GENERATING POKÉMON --------------------
puts "Generating Pokémans..."

# --------------- Raichu ---------------
raichu = Pokemon.new(
  generation: "I",
  pokedex_region: "Kanto",
  locations: {
      "sword":
      [
          {
              "max raid battles":
              [
                  "Giant's Cap",
                  "Motostoke Riverbank"
              ]
          }
      ],
      "shield":
      [
          {
              "max raid battles":
              [
                  "Giant's Cap",
                  "Motostoke Riverbank"
              ]
          }
      ]
  },
  number: 26,
  name: "Raichu",
  gender: {
      "gender": "Male",
      "ratio":
      {
          "male": 50.2,
          "female": 49.8
      }
  },
  types: ["Electric"],
  level: 100,
  nature: "Bashful",
  ability: {
      "name": "Static",
      "description": "The opponent has a 30% chance of being induced with PARALYZE when using an attack, that requires physical contact, against this Pokémon."
  },
  moves: {
      "Thunderbolt": {
          "type": "Electric",
          "category": "Special",
          "attack": 90,
          "accuracy": 100,
          "PP": 15,
          "effect %": 10,
          "description": "A strong electric blast crashes down on the target. This may also leave the target with paralysis."
      },
      "Thunder": {
          "type": "Electric",
          "category": "Effect",
          "attack": 110,
          "accuracy": 70,
          "PP": 10,
          "effect %": 30,
          "description": "A wicked thunderbolt is dropped on the target to inflict damage. This may also leave the target with paralysis."
      },
      "Electro Ball": {
          "type": "Electric",
          "category": "Special",
          "accuracy": 100,
          "PP": 10,
          "effect %": 0,
          "description": "The user hurls an electric orb at the target. The faster the user is than the target, the greater the move's power."
      },
      "Nuzzle": {
          "type": "Electric",
          "category": "Physical",
          "attack": 20,
          "accuracy": 100,
          "PP": 20,
          "effect %": 100,
          "description": "The user attacks by nuzzling its electrified cheeks against the target. This also leaves the target with paralysis."
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
raichu.user = User.last
raichu.team = Team.first
# -----
raichu_photo = URI.open("https://res.cloudinary.com/bruncky/image/upload/v1585056141/Pok%C3%A9Rails/Seed%20Images/Raichu.png")

raichu.photos.attach(io: raichu_photo, filename: 'raichu.png', content_type: 'image/png')
# -----
raichu.save!

# --------------- Charizard ---------------
charizard = Pokemon.new(
  generation: "I",
  pokedex_region: "Kanto",
  locations: {
      "sword":
      [
          {
              "max raid battles":
              [
                  "Hammerlocke Hills"
              ],
              "gigantamax raid battles":
              [
                  "Lake of Outrage"
              ]
          }
      ],
      "shield":
      [
          {
              "max raid battles":
              [
                  "Hammerlocke Hills"
              ],
              "gigantamax raid battles":
              [
                  "Lake of Outrage"
              ]
          }
      ]
  },
  number: 6,
  name: "Charizard",
  nickname: "Angry Chicken",
  gender: {
      "gender": "Female",
      "ratio":
      {
          "male": 88.14,
          "female": 11.86
      }
  },
  types: ["Fire", "Flying"],
  level: 95,
  nature: "Quiet",
  ability: {
      "name": "Blaze",
      "description": "Powers up Fire-type moves when the Pokémon's HP is low."
  },
  moves: {
      "Flamethrower": {
          "type": "Fire",
          "category": "Special",
          "attack": 90,
          "accuracy": 100,
          "PP": 24,
          "effect %": 10,
          "description": "The target is scorched with an intense blast of fire. This may also leave the target with a burn."
      },
      "Heat Wave": {
          "type": "Fire",
          "category": "Special",
          "attack": 95,
          "accuracy": 90,
          "PP": 10,
          "effect %": 10,
          "description": "The user attacks by exhaling hot breath on opposing Pokémon. This may also leave those Pokémon with a burn."
      },
      "Flare Blitz": {
          "type": "Fire",
          "category": "Physical",
          "attack": 120,
          "accuracy": 100,
          "PP": 15,
          "effect %": 10,
          "description": "The user cloaks itself in fire and charges the target. This also damages the user quite a lot. This attack may leave the target with a burn."
      },
      "Blast Burn": {
          "type": "Fire",
          "category": "Special",
          "attack": 150,
          "accuracy": 90,
          "PP": 5,
          "effect %": 0,
          "description": "The target is razed by a fiery explosion. The user can't move on the next turn."
      }
  },
  learnable_moves: {
      "Discharge": {
          "level": 32,
          "type": "Fire",
          "category": "Special",
          "attack": 80,
          "accuracy": 100,
          "PP": 15,
          "effect %": 30,
          "description": "The user strikes everything around it by letting loose a flare of electricity. This may also cause paralysis."
      }
  },
  held_item: "None",
  stats: {
      "HP": 268,
      "Attack": 214,
      "Defense": 183,
      "Speed": 210,
      "Sp. Def": 177,
      "Sp. Attack": 267
  }
)
# -----
charizard.user = User.last
charizard.team = Team.first
# -----
charizard_photo = URI.open("https://res.cloudinary.com/bruncky/image/upload/v1584990965/Pok%C3%A9Rails/Seed%20Images/Charizard.png")
charizard_photo_shiny = URI.open("https://res.cloudinary.com/bruncky/image/upload/v1584990965/Pok%C3%A9Rails/Seed%20Images/Charizard%20Shiny.png")

charizard.photos.attach(io: charizard_photo, filename: 'charizard.png', content_type: 'image/png')
charizard.photos.attach(io: charizard_photo_shiny, filename: 'charizard_shiny.png', content_type: 'image/png')
# -----
charizard.save!

# --------------- Zacian ---------------
zacian = Pokemon.new(
  generation: "VIII",
  pokedex_region: "Galar",
  locations: {
      "sword": "Energy Plant",
      "shield": "Trade from Sword"
  },
  number: 888,
  name: "Zacian",
  gender: {
      "gender": "Genderless"
  },
  types: ["Fairy"],
  level: 70,
  nature: "Gentle",
  ability: {
      "name": "Intrepid Sword",
      "description": "Boosts the Pokémon's Attack stat when the Pokémon enters a battle."
  },
  moves: {
      "Iron Head": {
          "type": "Steel",
          "category": "Physical",
          "attack": 80,
          "accuracy": 100,
          "PP": 15,
          "effect %": 30,
          "description": "The user slams the target with its steel-hard head. This may also make the target flinch."
      },
      "Crunch": {
          "type": "Dark",
          "category": "Physical",
          "attack": 80,
          "accuracy": 100,
          "PP": 15,
          "effect %": 20,
          "description": "The user crunches up the target with sharp fangs. This may also lower the target's Defense stat."
      },
      "Sacred Sword": {
          "type": "Fighting",
          "category": "Physical",
          "attack": 90,
          "accuracy": 100,
          "PP": 15,
          "effect %": 0,
          "description": "The user attacks by slicing with a long horn. The target's stat changes don't affect this attack's damage."
      },
      "Moonblast": {
          "type": "Fairy",
          "category": "Special",
          "attack": 95,
          "accuracy": 100,
          "PP": 15,
          "effect %": 30,
          "description": "Borrowing the power of the moon, the user attacks the target. This may also lower the target's Sp. Atk stat."
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
  held_item: "Rusted Sword",
  stats: {
      "HP": 215,
      "Attack": 189,
      "Defense": 168,
      "Speed": 219,
      "Sp. Def": 205,
      "Sp. Attack": 138
  }
)
# -----
zacian.user = User.last
zacian.team = Team.first
# -----
zacian_photo = URI.open("https://res.cloudinary.com/bruncky/image/upload/v1585057705/Pok%C3%A9Rails/Seed%20Images/Zacian.png")

zacian.photos.attach(io: zacian_photo, filename: 'zacian.png', content_type: 'image/png')
# -----
zacian.save!

# --------------- Raichu ---------------
raichu = Pokemon.new(
  generation: "I",
  pokedex_region: "Kanto",
  locations: {
      "sword":
      [
          {
              "max raid battles":
              [
                  "Giant's Cap",
                  "Motostoke Riverbank"
              ]
          }
      ],
      "shield":
      [
          {
              "max raid battles":
              [
                  "Giant's Cap",
                  "Motostoke Riverbank"
              ]
          }
      ]
  },
  number: 26,
  name: "Raichu",
  gender: {
      "gender": "Male",
      "ratio":
      {
          "male": 50.2,
          "female": 49.8
      }
  },
  types: ["Electric"],
  level: 100,
  nature: "Bashful",
  ability: {
      "name": "Static",
      "description": "The opponent has a 30% chance of being induced with PARALYZE when using an attack, that requires physical contact, against this Pokémon."
  },
  moves: {
      "Thunderbolt": {
          "type": "Electric",
          "category": "Special",
          "attack": 90,
          "accuracy": 100,
          "PP": 15,
          "effect %": 10,
          "description": "A strong electric blast crashes down on the target. This may also leave the target with paralysis."
      },
      "Thunder": {
          "type": "Electric",
          "category": "Effect",
          "attack": 110,
          "accuracy": 70,
          "PP": 10,
          "effect %": 30,
          "description": "A wicked thunderbolt is dropped on the target to inflict damage. This may also leave the target with paralysis."
      },
      "Electro Ball": {
          "type": "Electric",
          "category": "Special",
          "attack": 0,
          "accuracy": 100,
          "PP": 10,
          "effect %": 0,
          "description": "The user hurls an electric orb at the target. The faster the user is than the target, the greater the move's power."
      },
      "Nuzzle": {
          "type": "Electric",
          "category": "Physical",
          "attack": 20,
          "accuracy": 100,
          "PP": 20,
          "effect %": 100,
          "description": "The user attacks by nuzzling its electrified cheeks against the target. This also leaves the target with paralysis."
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
raichu.user = User.last
raichu.team = Team.first
# -----
raichu_photo = URI.open("https://res.cloudinary.com/bruncky/image/upload/v1585056141/Pok%C3%A9Rails/Seed%20Images/Raichu.png")

raichu.photos.attach(io: raichu_photo, filename: 'raichu.png', content_type: 'image/png')
# -----
raichu.save!

# --------------- Raichu ---------------
raichu = Pokemon.new(
  generation: "I",
  pokedex_region: "Kanto",
  locations: {
      "sword":
      [
          {
              "max raid battles":
              [
                  "Giant's Cap",
                  "Motostoke Riverbank"
              ]
          }
      ],
      "shield":
      [
          {
              "max raid battles":
              [
                  "Giant's Cap",
                  "Motostoke Riverbank"
              ]
          }
      ]
  },
  number: 26,
  name: "Raichu",
  gender: {
      "gender": "Male",
      "ratio":
      {
          "male": 50.2,
          "female": 49.8
      }
  },
  types: ["Electric"],
  level: 100,
  nature: "Bashful",
  ability: {
      "name": "Static",
      "description": "The opponent has a 30% chance of being induced with PARALYZE when using an attack, that requires physical contact, against this Pokémon."
  },
  moves: {
      "Thunderbolt": {
          "type": "Electric",
          "category": "Special",
          "attack": 90,
          "accuracy": 100,
          "PP": 15,
          "effect %": 10,
          "description": "A strong electric blast crashes down on the target. This may also leave the target with paralysis."
      },
      "Thunder": {
          "type": "Electric",
          "category": "Effect",
          "attack": 110,
          "accuracy": 70,
          "PP": 10,
          "effect %": 30,
          "description": "A wicked thunderbolt is dropped on the target to inflict damage. This may also leave the target with paralysis."
      },
      "Electro Ball": {
          "type": "Electric",
          "category": "Special",
          "attack": 0,
          "accuracy": 100,
          "PP": 10,
          "effect %": 0,
          "description": "The user hurls an electric orb at the target. The faster the user is than the target, the greater the move's power."
      },
      "Nuzzle": {
          "type": "Electric",
          "category": "Physical",
          "attack": 20,
          "accuracy": 100,
          "PP": 20,
          "effect %": 100,
          "description": "The user attacks by nuzzling its electrified cheeks against the target. This also leaves the target with paralysis."
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
raichu.user = User.last
raichu.team = Team.first
# -----
raichu_photo = URI.open("https://res.cloudinary.com/bruncky/image/upload/v1585056141/Pok%C3%A9Rails/Seed%20Images/Raichu.png")

raichu.photos.attach(io: raichu_photo, filename: 'raichu.png', content_type: 'image/png')
# -----
raichu.save!

# --------------- Raichu ---------------
raichu = Pokemon.new(
  generation: "I",
  pokedex_region: "Kanto",
  locations: {
      "sword":
      [
          {
              "max raid battles":
              [
                  "Giant's Cap",
                  "Motostoke Riverbank"
              ]
          }
      ],
      "shield":
      [
          {
              "max raid battles":
              [
                  "Giant's Cap",
                  "Motostoke Riverbank"
              ]
          }
      ]
  },
  number: 26,
  name: "Raichu",
  nickname: "Mouse with an Attitude",
  gender: {
      "gender": "Male",
      "ratio":
      {
          "male": 50.2,
          "female": 49.8
      }
  },
  types: ["Electric"],
  level: 100,
  nature: "Bashful",
  ability: {
      "name": "Static",
      "description": "The opponent has a 30% chance of being induced with PARALYZE when using an attack, that requires physical contact, against this Pokémon."
  },
  moves: {
      "Thunderbolt": {
          "type": "Electric",
          "category": "Special",
          "attack": 90,
          "accuracy": 100,
          "PP": 15,
          "effect %": 10,
          "description": "A strong electric blast crashes down on the target. This may also leave the target with paralysis."
      },
      "Thunder": {
          "type": "Electric",
          "category": "Effect",
          "attack": 110,
          "accuracy": 70,
          "PP": 10,
          "effect %": 30,
          "description": "A wicked thunderbolt is dropped on the target to inflict damage. This may also leave the target with paralysis."
      },
      "Electro Ball": {
          "type": "Electric",
          "category": "Special",
          "attack": 0,
          "accuracy": 100,
          "PP": 10,
          "effect %": 0,
          "description": "The user hurls an electric orb at the target. The faster the user is than the target, the greater the move's power."
      },
      "Nuzzle": {
          "type": "Electric",
          "category": "Physical",
          "attack": 20,
          "accuracy": 100,
          "PP": 20,
          "effect %": 100,
          "description": "The user attacks by nuzzling its electrified cheeks against the target. This also leaves the target with paralysis."
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
raichu.user = User.last
raichu.team = Team.first
# -----
raichu_photo = URI.open("https://res.cloudinary.com/bruncky/image/upload/v1585056141/Pok%C3%A9Rails/Seed%20Images/Raichu.png")

raichu.photos.attach(io: raichu_photo, filename: 'raichu.png', content_type: 'image/png')
# -----
raichu.save!

# ------------------------------

# --------------- Pikachu ---------------
pikachu = Pokemon.new(
  generation: "I",
  pokedex_region: "Kanto",
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
  gender: {
      "gender": "Male",
      "ratio":
      {
          "male": 50.2,
          "female": 49.8
      }
  },
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
  pokedex_region: "Kanto",
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
  gender: {
      "gender": "Male",
      "ratio":
      {
          "male": 50.2,
          "female": 49.8
      }
  },
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
