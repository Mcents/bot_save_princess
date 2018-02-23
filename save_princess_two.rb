require './save_princess_two/lib/princess'

puts "Welcome to Bot Saves Princess Two! Please enter a number between 3 and 100:"
n = gets.to_i

puts "Excellent! Now enter the location for Mario. For example: \n 1 2 (enter)"
row,col = gets.strip.split.map {|num| num.to_i}

grid = Array.new(n)

puts "Now enter the grid with the locations of Mario and the Princess. Mario is represented with m and the Princess with p. For example with Mario located at 1 2: \n -p- (enter), --m (enter), --- (enter)"
(0...n).each {|i| grid[i] = gets.strip}

princess = Princess.new(n, row, col, grid)
puts princess.create_first_step_to_princess
