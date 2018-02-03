class Integer
  def fizz_buzz
    if self % 15 == 0
      'Fizz Buzz'
    elsif self % 3 == 0
      'Fizz'
    elsif self % 5 == 0
      'Buzz'
    else
      self.to_s
    end
  end
end
