class Rover
	DIRECTIONS = %w(N,E,S,W)
	NORTH = 0
	EAST = 1
	SOUTH = 2
	WEST = 3

	def initialize (x,y,direction)
		@x = x.to_i
		@y = y.to_i
		@direction =direction
	end
	def move
		if @direction == 'N'
			@y +=1
		end
		if @direction == 'S'
			@y -=1
		end
		if @direction == 'E'
			@x +=1
		end
		if @direction == 'W'
			@x -=1
		end 
	end
	def turn_left
		if @direction == 'N'
			@direction = 'W'
		end
		if @direction == 'W'
			@direction = 'S'
		end
		if @direction == 'S'
			@direction = 'E'
		end
		if @direction == 'E'
			@direction = 'N'
		end
	end  
	def turn_right
		if @direction == 'N'
			@direction = 'E'
		end
		if @direction == 'E'
			@direction == 'S'
		end
		if @direction == 'S'
			@direction == 'W'
		end
		if @direction =='W'
			@direction == 'N'
		end
	end 
	def to_s
		puts "#{@x} #{@y} #{@direction}"
	end

end