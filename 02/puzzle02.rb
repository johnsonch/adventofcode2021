#!/usr/bin/env ruby

horizontal = 0
aim = 0

File.readlines('input.txt').each_with_index do |line, index|
  action = line.split[0]
  value = line.split[1].to_i

#  down X increases your aim by X units.
#  up X decreases your aim by X units.
#  forward X does two things:
#    It increases your horizontal position by X units.
#    It increases your depth by your aim multiplied by X.


  case action
  when "forward"
    horizontal += value
    aim += (-value * aim)
  when "up"
    aim -= value
  when "down"
    aim += value
  end
end

puts "Distance: #{horizontal}, Depth: #{aim}, Puzzle: #{horizontal * aim}"
