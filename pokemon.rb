require 'pry'

battle_chart = [[1,1,1,1,1,1,1,1,1,1,1,1,0.5,0,1,1,0.5,1], #Normal Attacking
            [1,0.5,0.5,1,2,2,1,1,1,1,1,2,0.5,1,0.5,1,2,1], #Fire Attacking
            [1,2,0.5,1,0.5,1,1,1,2,1,1,1,2,1,0.5,1,1,1], #Water Attacking
            [1,1,2,0.5,0.5,1,1,1,0,2,1,1,1,1,0.5,1,1,1], #Electric Attacking
            [1,0.5,2,1,0.5,1,1,0.5,2,0.5,1,0.5,2,1,0.5,1,0.5,1], #Grass Attacking
            [1,0.5,0.5,1,0.5,1,1,0.5,2,0.5,1,0.5,2,1,0.5,1,0.5,1], #Ice Attacking
            [2,1,1,1,1,2,1,0.5,1,0.5,0.5,0.5,2,0,0.5,1,0.5,1], #Fighting Attacking
            [1,1,1,1,2,1,1,0.5,0.5,1,1,1,0.5,0.5,1,1,0,2], #Poison Attacking
            [1,2,1,2,0.5,1,1,2,1,0,1,0.5,2,1,1,1,2,1], # Ground Attacking
            [1,1,1,0.5,2,1,2,1,1,1,1,2,0.5,1,1,1,0.5,1], # Flying Attacking
            [1,1,1,1,1,1,2,2,1,1,0.5,1,1,1,1,0,0.5,1], # Psychic Attacking
            [1,0.5,1,1,2,1,0.5,0.5,1,0.5,2,1,1,0.5,1,2,0.5,0.5], #Bug Attacking
            [1,2,1,1,1,2,0.5,1,0.5,2,1,2,1,1,1,1,0.5,1], # Rock Attacking
            [0,1,1,1,1,1,1,1,1,1,2,1,1,2,1,0.5,1,1], #Ghost Attacking
            [1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,0.5,0], #Dragon Attacking
            [1,1,1,1,1,1,0.5,1,1,1,2,1,1,2,1,0.5,1,0.5], # Dark Attacking
            [1,0.5,0.5,0.5,1,2,1,1,1,1,1,1,2,1,1,1,0.5,2], # Steel Attacking
            [1,0.5,1,1,1,1,2,0.5,1,1,1,1,1,1,2,2,0.5,1]] # Fairy Attacking


# To find multiplier: battlechart[attacker][victim]

order = {
      "Normal" => 0,
      "Fire" => 1,
      "Water" => 2,
      "Electric" => 3,
      "Grass" => 4,
      "Ice" => 5,
      "Fighting" => 6,
      "Poison" => 7,
      "Ground" => 8,
      "Flying" => 9,
      "Psychic" => 10,
      "Bug" => 11,
      "Rock" => 12,
      "Ghost" => 13,
      "Dragon" => 14,
      "Dark" => 15,
      "Steel" => 16,
      "Fairy" => 17
}

puts "Enter your character:"
attacker = gets.chomp
puts "Who are you attacking?"
victim = gets.chomp
binding.pry
multiplier = battle_chart[order[attacker]][order[victim]]
puts "The attack multiplier is: " + multiplier.to_s + "x"

