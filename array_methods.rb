class Array
  def square
    self.map { |el| el**2 }
  end

  def average
    return 0 if self.empty?
    return 0 if self.any? { |el| el.is_a?(String) }
    self.reduce(0, :+) / self.length.to_f
  end

  def even_odd
    even = 0
    odd = 0
    self.each { |el| el % 2 == 0 ? even += 1 : odd += 1 }
    even - odd
  end

  def reverse_strings
    return unless self.all? { |el| el.is_a?(String) }
    self.map { |el| el.reverse }
  end
end


numbers = (1..17).to_a
weekdays = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)

p numbers.square
p numbers.average
p numbers.even_odd
p weekdays.reverse_strings
