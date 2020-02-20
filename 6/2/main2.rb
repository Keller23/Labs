# frozen_string_literal: true

def enumerator
  Enumerator.new do |yielder|
    sum = 0.0
    prev = 0.5
    (1..Float::INFINITY).lazy.each do |counter|
      yielder.yield sum, prev
      prev = sum
      sum += (1 / (counter.to_f * (counter + 1)))
    end
  end
  end

def count(prec)
  arr = enumerator.take_while { |sum, prev| (prev - sum).abs >= 10**prec }
  arr.last[0]
end
