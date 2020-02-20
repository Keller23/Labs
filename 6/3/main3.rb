# frozen_string_literal: true

def differ(xi0, xi1, xi2, lam = nil)
  y = if block_given?
        call_proc(xi0, xi1, xi2, &Proc.new)
      else
        call_lam(xi0, xi1, xi2, lam)
      end
  y_res = result(y)
  y_res
end

def call_lam(xi0, xi1, xi2, lam)
  y = []
  y[0] = lam.call(xi0)
  y[1] = lam.call(xi1)
  y[2] = lam.call(xi2)
  y
end

def call_proc(xi0, xi1, xi2)
  y = []
  y[0] = yield xi0
  y[1] = yield xi1
  y[2] = yield xi2
  y
end

def result(yi)
  res = [(-3 * yi[0] + 4 * yi[1] - yi[2]) / 0.02,
         (-yi[0] + yi[2]) / 0.02,
         (yi[0] - 4 * yi[1] + 3 * yi[2]) / 0.02]
  res
end
