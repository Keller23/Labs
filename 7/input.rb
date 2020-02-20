# frozen_string_literal: true

require './main.rb'

file = File.new('F', 'w')
puts "Write nubmer string in file 'F'"
str = ''
# gets.chop.to_i.times { file.write(gets) }
gets.chop.to_i.times { str << gets }

file.close
tran_file('F', 'G', str)
puts "process sucsess \nnew file:"
puts p_new_file('G')
