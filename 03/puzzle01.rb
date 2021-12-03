#!/usr/bin/env ruby

#111100101100
#101100110001
splits = []
File.readlines('input.txt').each_with_index do |line, index|
  splits << line.scan(/\w/)
end

groupped = {}
splits[0].each_with_index do |item, index|
  groupped[index] = []
end

splits.each do |split|
  split.each_with_index do |value, index|
    groupped[index] << value
  end
end

gamma_rate_binary = []
groupped.each do |group|
  ones = group.join.count('1')
  zeros = group.join.count('0')
  gamma_rate_binary << (zeros < ones ? '1':'0')
end

epsilon_rate_binary = []
groupped.each do |group|
  ones = group.join.count('1')
  zeros = group.join.count('0')
  epsilon_rate_binary << (zeros > ones ? '1':'0')
end


puts "Gamma: #{gamma_rate_binary.join('').to_i(2)}"
puts "Epsilon: #{epsilon_rate_binary.join('').to_i(2)}"
puts "Puzzle result: #{gamma_rate_binary.join('').to_i(2) * epsilon_rate_binary.join('').to_i(2)}"
