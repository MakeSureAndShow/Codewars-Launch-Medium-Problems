# The problem is asking us to print out the on lights for flickering after n repetitions of each incrementing interval flicker
# Mainly we will be using a hash to represent on or off and numbers in it, we will flicker them on off a total of n repetitions with
# a smaller method to do the interval part

def initialize_lights(number)
  lights = Hash.new
  1.upto(number) { |num| lights[num] = "off" }
  lights
end

def toggle_interval(lights, num)
  lights.each do |key, value|
    if key % num == 0
      lights[key] = (value == "off" ? "on" : "off")
    end
  end
end

def on_lights(lights)
  lights.select { |key, value| value == "on" }.keys
end

def toggle_on(number)
  lights = initialize_lights(number)
  1.upto(number) do |num|
    toggle_interval(lights, num)
  end
  on_lights(lights)
end

p toggle_on(1000)