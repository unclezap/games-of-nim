require './dragons'
require './creature'
require 'pry'

d1 = Dragon.new("Smog", "black", 1000)
# d2 = Dragon.new("St. George's Dragon", "green")
play = "yes"


while play == "yes" do
puts "What's your name?"
skip = 0
player = gets.strip

puts "Your name is #{player}"
puts "Breed a dragon with Smog? (Type yes or no)"
breed = gets.strip
if breed == "yes"
    skip = 1
    d2 = d1.gestate
    puts "You made a new dragon! Say hello to #{d2.name}!"
else
    puts "That's probably smart."
    puts "Would you like to get some lunch?"
    lunch = gets.strip
    d1.murder
    puts "oh no, it's #{d1.name}!"
    d1.eat_someone(player, d1.name)
end

if skip == 1
    puts "That's pretty cool....you wanna do it again? (Type yes or no)"
    breed_again = gets.strip
    if breed_again == "yes"
        d3 = d2.gestate
        puts "You made a new dragon! Say hello to #{d3.name}!"
    else
        puts "That's probably smart."
        puts "Would you like to get some lunch?"
        lunch = gets.strip
        d2.murder
        puts "oh no, it's #{d2.name}!"
        d1.eat_someone(player, d2.name)
    end
end

if breed_again == "yes"
    puts "That's even more cool....you wanna do it again? (Type yes or no)"
        breed_again_again = gets.strip
        if breed_again_again == "yes"
            d4 = d3.gestate
            puts "You made a new dragon! Say hello to #{d3.name}!"
            puts "That's probably enough dragons for today. Man, they grow up so fast!"
        else
            puts "That's probably smart."
            puts "Would you like to get some lunch?"
            lunch = gets.strip
            d1.murder
            puts "oh no, it's #{d1.name}!"
            d1.eat_someone(player, d1.name)
        end
    end

puts "Play again?"
play = gets.strip
end

# binding.pry