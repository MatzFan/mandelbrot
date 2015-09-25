require 'complex'

class Mandelbrot

  def initialize(window)
    @window = window
    @width = @window.width
    @height = @window.height
    @color = Gosu::Color.new(0xff_00ff00)
    @pixel = Gosu::Image.from_text('.', 10)
  end

  def mandelbrot(a)
    z = 0
    50.times { z = z * z + a }
    z
  end

  def trans_x(x)
    3*@width/4 + (x * @width/3)
  end

  def trans_y(y)
    @height/2 - (y * @height/3)
  end

  def draw
    (1.0).step(-1,-0.05).map do |y|
      (-2.0).step(0.5,0.0315).map do |x|
        if mandelbrot(Complex(x,y)).abs < 2
          @pixel.draw(trans_x(x), trans_y(y), 1, 1, 1, @color)
        end
      end
    end
  end

end
