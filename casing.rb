class String
  def toJadenCase
    stringray = self.split(" ")
    new_array = []
    stringray.each do |word|
      new_array << word.capitalize
    end
    return new_array.join(" ")
  end
end

str = "How can mirrors be real if our eyes aren't real"
puts str.toJadenCase
