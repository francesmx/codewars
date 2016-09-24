def buy_tofu(cost,box)
  monmes = box.scan("monme").length
  box = box.gsub("monme", "")
  mons = box.scan("mon").length
  total_coin_value = mons + (monmes * 60)
  monmes_needed = cost/60
  if monmes >= monmes_needed
    min_coins_needed = monmes_needed + cost%60
  else
    if monmes > 0
      min_coins_needed = cost/(monmes*60) + ((cost - (monmes*60)) - monmes)
    else
      min_coins_needed = cost
    end
  end

  arr = []
  arr.push mons
  arr.push monmes
  arr.push total_coin_value
  arr.push min_coins_needed

  if (mons >= cost) || (monmes >= monmes_needed && mons >= cost%60)
    return arr
  elsif monmes > 0 && ((cost - (monmes*60) + mons) >= cost)
    return arr
  else
    "leaving the market"
  end
end

box = 'mon mon mon mon mon apple mon mon mon mon mon mon mon monme mon mon monme mon mon mon mon cloth monme mon mon mon mon mon mon mon mon cloth mon mon monme mon mon mon mon monme mon mon mon mon mon mon mon mon mon mon mon mon mon'
cost = 124
puts buy_tofu(cost,box)
puts

box = 'mon mon mon'
cost = 674
puts buy_tofu(cost,box)
puts

box = 'monme mon mon monme'
cost = 1
puts buy_tofu(cost,box)
puts

box = 'mon mon mon mon mon apple mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon monme mon mon mon mon cloth mon mon mon mon mon mon mon mon mon cloth mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon mon'
cost = 124
puts buy_tofu(cost,box)
puts

box = 'monme mon mon monme'
cost = 122
puts buy_tofu(cost,box)
