class Ordinalize
  def self.convert(num)
    result = num.to_s
    result += if result[-2] == "1"
      "th"
    elsif result[-1] == "1"
      "st"
    elsif result[-1] == "2"
      "nd"
    elsif result[-1] == "3"
      "rd"
    else
      "th"
    end
  end
end