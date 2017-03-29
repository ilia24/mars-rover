class Rover
  def initialize(x, y, d)
    @x = x.to_i
    @y = y.to_i
    @d = d.to_i #n0,e1,s2,w3
  end

  def move
    if @d == 0
      @y += 1
      puts "moving north #{@x},#{@y}"

    elsif @d == 1
      @y -= 1
      puts "moving south #{@x},#{@y}"

    elsif @d == 2
      @x += 1
      puts "moving right#{@x},#{@y}"

    elsif @d == 3
      @x -= 1
      puts "moving left#{@x},#{@y}"
    end
  end

  def turn(direction)
    if direction == "L"
      @d -+ 1
      if @d == -1
        @d += 4
      end
      puts "#{@d}"
    elsif direction == "R"
      @d += 1
      puts "#{@d}"
    end

  end

end



direction = {"N" => 0, "E" => 1, "S" => 2, "W" => 3}
direction = ["N", "E", "S", "W"]
