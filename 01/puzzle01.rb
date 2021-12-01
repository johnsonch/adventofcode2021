#!/usr/bin/env ruby

previous_line = 0
count_of_increases = 0

File.readlines('input.txt').each_with_index do |line, index|
  current = line.to_i
  unless index == 0
    if previous_line < current
      count_of_increases += 1
    end
  end

  previous_line = current
end


puts count_of_increases
