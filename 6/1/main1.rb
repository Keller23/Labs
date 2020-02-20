# frozen_string_literal: true

def count(prec)
  sum = 0.0
  n = 1.0
  prev = 1.0
  while (prev - sum).abs >= 10**prec
    prev = sum
    sum += 1 / (n * (n + 1))
    n += 1
  end
  sum
end
