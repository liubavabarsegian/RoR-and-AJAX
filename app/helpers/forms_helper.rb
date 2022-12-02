# frozen_string_literal: true

# module FormsHelper
module FormsHelper
  def prime?(num)
    return true if num == 2
    return false if num < 2 || num != num.to_i

    (2...(Math.sqrt(num) + 1)).none? { |i| (num % i).zero? }
  end

  def mersenne?(num)
    prime?(num) && prime?(Math.log(num + 1, 2))
  end

  def mersenne_to_n(num)
    (2...num).select { |i| mersenne?(i) }
  end
end
