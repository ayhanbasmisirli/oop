require './rover'

class Commander
	def create_rover(staring_point)
		coord = staring_point.split(" ")
		@rover = Rover.new(coord[0],coord[1],coord[2])
	end
	def move_rover(move_command)
		move_command.split("").each do |c|
			if c == 'L'
				@rover.turn_left
			end
			if c == 'R'
				@rover.turn_right
			end
			if c == 'M'
			 	@rover.move
			end 
		end
		
	end
	def display
		@rover.to_s
	end
end
commander = Commander.new
commander.create_rover("1 2 N")
commander.move_rover("LMLMLMLMM")
commander.display