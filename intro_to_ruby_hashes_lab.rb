def base_hash
  # Remember implicit return! We're returning this new Hash _without_ the
  # keyword "return." Nice and neat.
	{:railroads => {}}
end

def monopoly_with_second_tier
	{:railroads => {:pieces => 4}}
end

def monopoly_with_third_tier

	abc = monopoly_with_second_tier()
  abc[:railroads][:rent_in_dollars] = {	:one_piece_owned => 25,
		:two_pieces_owned => 50,
		:three_pieces_owned => 100,
		:four_pieces_owned => 200}
	 abc[:railroads][:names] = {:reading_railroad => {}, :pennsylvania_railroad => {}, :b_and_o_railroad => {}, :shortline_railroad => {}}

	abc
end

def monopoly_with_fourth_tier
  xyz = monopoly_with_third_tier()
		xyz[:railroads][:names][:reading_railroad]["mortgage_value"] = "$100"
		xyz[:railroads][:names][:pennsylvania_railroad]["mortgage_value"] = "$200"
		xyz[:railroads][:names][:b_and_o_railroad]["mortgage_value"] = "$400"
		xyz[:railroads][:names][:shortline_railroad]["mortgage_value"] = "$800" 
	xyz
end
