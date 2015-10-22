j = 0
xcoord = [0, 1, 2, 3, 4]
xcount = 0
ycoord = [0, 1, 2, 3, 4]
ycount = 0
place_names = %w(swamp bog grass mountain office lawnchair washington oregon colorado utah texas newyork vermont mexico DC Jamaica Japan Philippines Thailand one two three for five six and seven )
monster_names = %w(Thundercats Shoreditch lo-fi cronut Pork belly Marfa High Life Austin butcher literally pour-over plaid bespoke chillwave salvia Wes Anderson vinyl put a bird on it Helvetica Wes Anderson asymmetrical slow-carb four loko locavore banjo Portland salvia umami polaroid Odd Future Distillery before they sold out lo-fi slow-carb selfies VHS)
monster_names = %w(1.png Shoreditch lo-fi cronut Pork belly Marfa High Life Austin butcher literally pour-over plaid bespoke chillwave salvia Wes Anderson vinyl put a bird on it Helvetica Wes Anderson asymmetrical slow-carb four loko locavore banjo Portland salvia umami polaroid Odd Future Distillery before they sold out lo-fi slow-carb selfies VHS)
for xcount in 0..4 do
  for ycount in 0..4 do
  Place.create(name: place_names[j], xcoord: xcount, ycoord: ycount, accessible?: false)
  ycount += 1
  j += 1
  Monster.create(name: monster_names[j], attack: rand(0..5), :place_id => j, token: "images/thumb/monster-#{rand(1..14)}.png")
  end
  xcount += 1
end
Place.first.update_attributes(:accessible? => true)
