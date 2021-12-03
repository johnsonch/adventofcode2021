#!/usr/bin/env ruby

distance = 0
depth = 0

File.readlines('input.txt').each_with_index do |line, index|
  action = line.split[0]
  value = line.split[1].to_i
  puts "Action: #{action}, Value: #{value}"
  case action
  when "forward"
    distance += value
  when "up"
    depth -= value
  when "down"
    depth += value
  end
end

puts "Distance: #{distance}, Depth: #{depth}, Puzzle: #{distance * depth}"
