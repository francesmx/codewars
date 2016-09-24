def accum(s)

  stringray = s.split(//)
  str = ""
  index_multiplier = 1

  stringray.each do |character|

    str += "#{character.upcase}"

    if index_multiplier > 1
      str += "#{character.downcase}" * (index_multiplier-1)
    end

    if stringray.count != index_multiplier
      str += "-"
    end

    index_multiplier +=1
  end
  str
end

accum("ZpglnRxqenU")
