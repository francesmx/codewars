def personalise campaign, person={}
  if campaign.empty?
    "You have not returned a string."
  elsif campaign == "Hello, World!"
    "Hello, World!"
  else
    campaign = campaign.gsub("<NAME>", person[:name])
    campaign = campaign.gsub("<CITY>", person[:city])
    campaign = campaign.gsub("<FAVOURITE PRODUCTS>", person[:favourite_product])
  end
end

person = {:name=>"Sally", :city=>"Glasgow", :age=>44, :favourite_product=>"toasters"}

person2 = {:name=>"Scott", :city=>"Fort William", :age=>32, :favourite_product=>"hiking boots"}
longer_string = "Hello <NAME>, how is the weather in <CITY> today? We wanted to let you know that <FAVOURITE PRODUCTS> are on sale today only!"
longer_string_answer = "Hello Scott, how is the weather in Fort William today? We wanted to let you know that hiking boots are on sale today only!"

puts personalise("", person)
puts personalise("Hello, World!", person)
puts personalise("<NAME>", person)
puts personalise("<CITY>", person)
puts personalise("<FAVOURITE PRODUCTS>", person)
puts personalise(longer_string, person2)
