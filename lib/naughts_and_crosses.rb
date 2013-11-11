def play_on_board(current_board, next_play)
 	empty_line = " | | |\n"
 	row_a = "x| | |\n"
 	row_b = " |x| |\n"
 	row_c = " | |x|\n"
 	if next_play == 1
 		row_a + empty_line * 2
 	elsif next_play == 2
 		row_b + empty_line * 2
 	elsif next_play == 3
 		row_c + empty_line * 2 
 	elsif next_play == 4
 		empty_line + row_a + empty_line
 	elsif next_play == 5
 		empty_line + row_b + empty_line
 	elsif next_play == 6
 		empty_line + row_c + empty_line
 	elsif next_play == 7
 		empty_line * 2 + row_a
 	elsif next_play == 8
 		empty_line * 2 + row_b
 	elsif next_play == 9
 		empty_line * 2 + row_c				
 	end
end 











