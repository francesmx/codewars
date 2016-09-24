def title_case(title, minor_words = '')
  if !title.empty?
    arr = title.split(" ")
    new_arr = []
    count = 1
    arr.each do |word|
      if count > 1 && (minor_words.downcase.match(/\b#{word.downcase}\b/))
        new_arr << word.downcase
      else
        new_arr << word.capitalize
      end
      count += 1
    end
    new_arr.join(" ")
  else
    ""
  end
end

puts title_case('')
puts title_case('a clash of KINGS', 'a an the of')
puts title_case('THE WIND IN THE WILLOWS', 'The In')
puts title_case('the quick brown fox')
puts title_case('First a of in', 'an often into')
