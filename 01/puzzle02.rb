#!/usr/bin/env ruby
measurements = []
File.readlines('input.txt').each_with_index do |line|
  measurements << line.to_i
end

measurement_sums = []
while measurements.size > 2
  sum = measurements[0] + measurements[1] + measurements[2]
  measurement_sums << sum
  measurements.shift(1)
end


previous_sum = 0
count_of_increases = 0

measurement_sums.each_with_index do |measurement_sum, index|
  unless index == 0
    if previous_sum < measurement_sum
      count_of_increases += 1
    end
  end
  previous_sum = measurement_sum
end

puts count_of_increases
