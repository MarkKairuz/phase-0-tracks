# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yelling_happily(words)
#   	words + "!!!" + " :D"
#   end
# end

# p Shout.yell_angrily("UGGHH!")
# p Shout.yelling_happily("YEEEEAAAHH BAAABY!!")

module Shout
	def yell(sound)
		puts "#{sound}" + "!!!"
	end
end

class Pirate
	include Shout
end

class Train_Conductor
	include Shout
end

puts ""
puts "The Pirate yells:"
pirate = Pirate.new
pirate.yell("AAAAArrrrrggghhh")
puts ""

puts "While the Train Conductor yells:"
train_conductor = Train_Conductor.new
train_conductor.yell("AAAAALLLL AAABBoooaAAARRRDD")
