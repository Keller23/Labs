# frozen_string_literal: true

class Integers
  attr :ch
  def initialize(ch)
    @ch = ch
  end

  def put
    puts "Вывод значения числа в классе 1: #{@ch}"
  end

  def len
    i = 0
    ch1 = @ch
    while ch1 % 10 != 0
      i += 1
      ch1 /= 10
    end
    print "Вывод количества цифр целового числа: #{i}"
    i
  end
end

class Numbers < Integers
  attr :real
  def initialize(ch, real)
    super(ch)
    @real = real
  end

  def put
    puts "Вывод содержимого класса 2: #{@real}  #{@ch}"
  end
end

obj2 = Numbers.new(12, 15.0)
obj2.put
obj2.len
