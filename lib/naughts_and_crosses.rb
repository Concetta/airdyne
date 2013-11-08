def naughts_and_crosses_board

		" | | |\n" + 
		"-------\n" + 
		" | | |\n" +
		"-------\n" + 
		" | | |\n" 
end 

def position_on_board(input)
	line_seperator = "-------\n"
	empty_line = " | | |\n"
	line_and_empty = line_seperator + empty_line
	empty_and_line = empty_line + line_seperator
	block_a = "o| | |\n"
	block_b = " |o| |\n"
	block_c = " | |o|\n"

	if input == "A1"
		block_a + line_and_empty * 2 
	elsif input == "B1"
		block_b + line_and_empty * 2 		
	elsif input == "C1"
		block_c + line_and_empty * 2 
	elsif input == "A2"
		empty_and_line + block_a + line_and_empty 
	elsif input == "B2"
		line_and_empty + block_b + line_and_empty 
	elsif input == "C2"
		line_and_empty + block_c + line_and_empty 
	elsif input == "A3"
		empty_and_line * 2 + block_a 
	elsif input == "B3"
		empty_and_line * 2 + block_b
	elsif input == "C3"
		empty_and_line * 2 + block_c
	end
end 














