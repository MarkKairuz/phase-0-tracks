class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

end

class Puppy

  def initialize
    puts "Initializing new puppy instance"
  end
  
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.to_i
    int.times { puts "Woof!" }
  end
  
  def roll_over
    puts "*rolls over*"
  end
  
  def dog_years(human_years)
    human_years.to_i
    dog_age = 0
    if human_years >= 2
      dog_age += 10
      dog_age += (human_years - 2) * 4
    else
      dog_age == 5
    end
    p dog_age
  end
  
  def shake(paw)
    puts "*shakes hand with #{paw} paw*"
  end
end

class Computer
  
  def initialize
    puts "Create a new system instance."
  end
  
  def screen(on)
    if on.downcase == "true"
      puts "Your screen is now on."
    elsif on.downcase == "false"
      puts "Your screen is still off... How are you able to see this!?!"
    else
      puts "Wrong input."
    end
  end
  
  def login(user)
    puts "#{user} is now logged in."
  end
  
end
    

# fido = Puppy.new
# fido.fetch("bone")
# fido.speak(5)
# fido.roll_over
# fido.dog_years(5)
# fido.shake("left")

# puts ""
# puts "-------------------------"
# puts ""
# desktop = Computer.new
# desktop.screen("true")
# desktop.login("King Bob")

computers = []
50.times do
  dekstop = Computer.new
  computers.push(dekstop)
end

computers.each do |i|
  i.screen("true")
  i.login("#{i}")
end
