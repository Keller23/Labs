# frozen_string_literal: true

require './main3.rb'

puts ' ' * 27 + 'sin(x)'

lambda_sin = ->(x) { Math.sin(x) }
p differ(0.49, 0.50, 0.51) { |x| Math.sin(x) }
p differ(0.49, 0.50, 0.51, lambda_sin)
puts ' ' * 27 + 'tag(x)'
lambda_tan = ->(x) { Math.tan(x + 1) }
p differ(0.49, 0.50, 0.51) { |x| Math.tan(x + 1) }
p differ(0.49, 0.50, 0.51, lambda_tan)
