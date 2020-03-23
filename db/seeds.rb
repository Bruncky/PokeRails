# -------------------- TRACKING INFORMATION --------------------
puts "Destroying Pokémans"
Pokemon.destroy_all

puts "Destroying teams..."
Team.destroy_all

puts "Destroying users..."
User.destroy_all

# -------------------- GENERATING USER --------------------
puts "Generating user..."

user = User.create!(name: "Bruno A. Brunckhorst", username: "bruncky", email: "bruncky@gmail.com", password: "DsRSu90wAD287$")
# -------------------- GENERATING TEAM --------------------
puts "Generating team..."

team = Team.new(name: "Main Team")
team.user = user

team.save!

# -------------------- GENERATING POKÉMON --------------------
puts "Generating Pokémans"

pikachu = Pokemon.new({
  generation: "I",
  pokedex_region: "Johto",
  locations:
  {
      "sword":
      [
          "Route 4",
          "Rolling Fields",
          "Stony Wilderness"
      ],
      {
          "max raid battles":
          [
              "Giant's Cap",
              "Giant's Mirror",
              "Hammerlocke Hills",
              "Lake of Outrage",
              "Motostoke Riverbank"
          ]
      },
      "shield":
      [
          "Route 4 Shield",
          "Rolling Fields",
          "Stony Wilderness"
      ],
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
  },
  number: 25,
  name: "Pikachu",
  gender: "male",
  types: ["Electric"],
  level: 99,
  evolutions: {"thunderstone": "Raichu"},
  nature: "Calm",
  ability: {"name": "Static", "description": "The opponent has a 30% chance of being induced with PARALYZE when using an attack, that requires physical contact, against this Pokémon."},
  moves:
  {
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
  learnable_moves:
  {
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
  stats:
  {
      "HP": 267,
      "Attack": 250,
      "Defense": 136,
      "Speed": 274,
      "Sp. Def": 180,
      "Sp. Attack": 223
  },
})

charizard = Pokemon.new({
  generation: "I",
  pokedex_region: "Johto",
  locations:
  {
      "sword":
      [
          "Route 4",
          "Rolling Fields",
          "Stony Wilderness"
      ],
      {
          "max raid battles":
          [
              "Giant's Cap",
              "Giant's Mirror",
              "Hammerlocke Hills",
              "Lake of Outrage",
              "Motostoke Riverbank"
          ]
      },
      "shield":
      [
          "Route 4 Shield",
          "Rolling Fields",
          "Stony Wilderness"
      ],
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
  },
  number: 6,
  name: "Charizard",
  gender: "male",
  types: ["Fire", "Flying"],
  level: 86,
  evolutions: {"thunderstone": "Raichu"},
  nature: "Calm",
  ability: {"name": "Static", "description": "The opponent has a 30% chance of being induced with PARALYZE when using an attack, that requires physical contact, against this Pokémon."},
  moves:
  {
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
  learnable_moves:
  {
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
  stats:
  {
      "HP": 267,
      "Attack": 250,
      "Defense": 136,
      "Speed": 274,
      "Sp. Def": 180,
      "Sp. Attack": 223
  },
})

pikachu.user = User.last
pikachu.team = Team.last

pikachu.save!

charizard.user = User.last
charizard.team = Team.last

charizard.save!
