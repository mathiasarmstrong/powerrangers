module Hit
	def punch(person)
		if @strength <5
			puts person.scream
			puts person.run(20, fast)
		else
			puts "#{person.name} has been somersaulted into the air"
			person.caffeinie_level -=1
		end
		@caffeinie_level-=10
	end
end

class Person
	attr_accessor :name,:caffeinie_level
	def initialize(name, caff)
		@name=name
		@caffeinie_level=caff
	end
	def run(distance, speed="slow")
		if speed="fast"
			if (distance/10)<@caffeinie_level
			@caffeinie_level = @caffeinie_level - distance/10
			return "Fast run for #{distance} meters, have #{@caffeinie_level} caffiene left"
			else
			return "you do not have enough caffiene"
			end
		else
			return "slow run for #{distance} meters "
		end	
	end
	def scream
		return "OH MY GOD!!!!!"
	end
	def drink_coffee
		@caffeinie_level+=40
	end
end

class PowerRanger < Person
	def initialize(name, caff, strength, color)
		@strength = strength
		@color = color
		super(name, caff)
	end
	include Hit
	def rest
		return "you are asleep"
	end

	def use_megazord
		@strength=5000
		@caffeinie_level = 0
	end
end

class EvilNinja < Person
	def initialize(name, caffeinie_level, strength, evilness)
		super(name, caffeinie_level)
		@strength = strength
		@evilness = evilness
	end

	include Hit
end
