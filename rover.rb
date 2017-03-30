class Rover
  def initialize(x, y, d)
    @x = x.to_i #XplusE XnegW
    @y = y.to_i #YplusN #YnegS
    @d = d.to_i #n0 e1 s2 w3
  end

#// the move and turn methods simply process the direction the rover is facing depending on an integer compass, and allow it to move from a input
  def move
    if @d == 0
      @y += 1
      puts "Moving one north to #{@x},#{@y}"

    elsif @d == 2
      @y -= 1
      puts "Moving one south to #{@x},#{@y}"

    elsif @d == 1
      @x += 1
      puts "Moving one right to #{@x},#{@y}"

    elsif @d == 3
      @x -= 1
      puts "Moving one left to #{@x},#{@y}"
    end
  end

  def turn(direction)
    if direction == "left"
      puts "Turning left"
      @d -= 1
      if @d == -1
        @d += 4
      end
    elsif direction == "right"
      puts "Turning right"
      @d += 1
    end
  end



def report
  if @d == 0
    englishheading = "North"
  elsif @d == 1
    englishheading = "East"
  elsif @d == 2
    englishheading = "South"
  elsif @d == 3
    englishheading = "West"
  end
  puts "My position is X:#{@x},Y:#{@y}. I am currently facing #{englishheading}"
end
#  //This code takes the various letters, splits them into an array, clears any random chars, then feeds them to the other methods"




  def read(letters)
    split_letters = letters.split ("")
    finish = split_letters.map do |element|
      if element == "L"
        element = "left"
      elsif element == "R"
        element = "right"
      elsif element == "M"
        element = "move"
      else
        element = nil
      end
    end
    finish.compact!
        puts "#{finish}"
    finish.each do |action|
      if action == "move"
        self.move
      elsif action == "left"
        self.turn("left")
      elsif action == "right"
        self.turn("right")
      end
    end
    self.report
  end

end

#what inputs does my class take
# integer values for x and y, and "left" and "right" for turning

#
# direction = {"N" => 0, "E" => 1, "S" => 2, "W" => 3}
# direction = ["N", "E", "S", "W"]
