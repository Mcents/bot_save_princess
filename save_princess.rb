require './save_princess/lib/princess'

puts "Welcome to Bot Saves Princess! Please enter a number between 3 and 100:"
n = gets.to_i
puts "Excellent! Now enter the grid with the locations of Mario and the Princess. Mario is represented with m and the Princess with p. For example a 3 column grid: \n -p- (enter), --- (enter), m-- (enter)"

grid = Array.new(n)

(0...n).each {|i| grid[i] = gets.strip}

princess = Princess.new(n, grid)
puts princess.create_steps_to_princess
