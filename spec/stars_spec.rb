require 'rspec'
require './lib/stars.rb'

describe "horizontal star printer" do 
	it "returns '*' if input 1" do 
		get_horizontal_stars(1).should == "*"
	end
	
	it "returns '**' if input 2" do 
		get_horizontal_stars(2).should == "**"
	end

	it "returns '***' if input 3" do 
		get_horizontal_stars(3).should == "***"
	end
end 

describe "vertical star printer" do
	context "down" do  
		it "returns '' if input 0" do 
			get_vertical_stars_down(0).should == ""
		end

		it "returns '*' if input 1" do 
			get_vertical_stars_down(1).should == "*"
		end

		it "returns '*\n**' if input 2" do 
			get_vertical_stars_down(2).should == "*\n**"
		end

		it "returns '*\n**\n***' if input 3" do 
			get_vertical_stars_down(3).should == "*\n**\n***"
		end

		it "returns '*\n**\n***\n****' if input 4" do 
			get_vertical_stars_down(4).should == "*\n**\n***\n****"
		end

		it "returns '*\n**\n***\n****\n*****' if input 5" do 
			get_vertical_stars_down(5).should == "*\n**\n***\n****\n*****"
		end

		it "returns '*\n**\n***\n****\n*****\n******\n*******' if input 7" do 
			get_vertical_stars_down(7).should == "*\n**\n***\n****\n*****\n******\n*******"
		end
	end 

	context "up" do 
		it "returns '*' if input 1" do 
			get_vertical_stars_up(1).should == "*"
		end

		it "returns '**\n*' if input 2" do 
			get_vertical_stars_up(2).should == "**\n*"
		end

		it "returns '***\n**\n*' if input 3" do 
			get_vertical_stars_up(3).should == "***\n**\n*"
		end

		it "returns '****\n***\n**\n*' if input 4" do 
			get_vertical_stars_up(4).should == "****\n***\n**\n*"
		end	
		
		it "returns '*****\n****\n***\n**\n*' if input 5" do 
			get_vertical_stars_up(5).should == "*****\n****\n***\n**\n*"
		end

		it "returns '*******\n******\n*****\n****\n***\n**\n*' if input 7" do 
			get_vertical_stars_up(7).should == "*******\n******\n*****\n****\n***\n**\n*"
		end		
	end 
end

describe "print star pyramid" do 
	context "spaces" do
		it "returns ' ' if input 1" do
			spaces(1).should == " "
		end 

		it "returns '  ' if input 2" do
			spaces(2).should == "  "
		end 

		it "returns '     ' if input 5" do
			spaces(5).should == "     "
		end 
	end 

	context "star pyramid" do 
		it "returns '*' if input 1" do 
			star_pyramid(1).should == "*"
		end

		it "returns ' * \n***' if input 2" do 
			star_pyramid(2).should == " *\n***"
		end

		it "returns '  *\n ***\n*****' if input 3" do 
			star_pyramid(3).should == "  *\n ***\n*****"
		end

		it "returns '   *\n  ***\n *****\n*******' if input 4" do 
			star_pyramid(4).should == "   *\n  ***\n *****\n*******"
		end

		it "returns '    *\n   ***\n  *****\n *******\n*********' if input 5" do 
			star_pyramid(5).should == "    *\n   ***\n  *****\n *******\n*********"
		end

		it "returns '     *\n    ***\n   *****\n  *******\n *********\n***********' if input 6" do 
			star_pyramid(6).should == "     *\n    ***\n   *****\n  *******\n *********\n***********"
		end
	end

	context "empty star pyramid" do 
		it "returns '*' if input 1" do 
			empty_star_pyramid(1).should == "*"
		end

		it "returns ' *\n***' if input 2" do 
			empty_star_pyramid(2).should == " *\n***"
		end

		it "returns '  *\n * *\n*****' if input 3" do 
			empty_star_pyramid(3).should == "  *\n * *\n*****"
		end

		it "returns '   *\n  * *\n *   *\n*******' if input 4" do 
			empty_star_pyramid(4).should == "   *\n  * *\n *   *\n*******"
		end		

		it "returns '    *\n   * *\n  *   *\n *     *\n*********' if input 5" do 
			empty_star_pyramid(5).should == "    *\n   * *\n  *   *\n *     *\n*********"
		end

		it "returns '     *\n    * *\n   *   *\n  *     *\n *       *\n***********' if input 6" do 
			empty_star_pyramid(6).should == "     *\n    * *\n   *   *\n  *     *\n *       *\n***********"
		end					
	end 
end 


