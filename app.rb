#!/usr/bin/env ruby

require 'gosu'
require 'complex'

W, H = 900, 900 # window dimensions

require_relative 'mandelbrot'

class GameWindow < Gosu::Window

  def initialize
    super W, H
    self.caption = 'Mandelbrot'
  end

  def update
    # case
    # when button_down? Gosu::Button::KbDown
    #   @mandelbrot.move_down
    # when button_down? Gosu::Button::KbUp
    #   @mandelbrot.move_up
    # when button_down? Gosu::Button::KbLeft
    #   @mandelbrot.move_left
    # when button_down? Gosu::Button::KbRight
    #   @mandelbrot.move_right
    # when button_down? Gosu::Button::KbNumpadAdd
    #   @mandelbrot.zoom_in
    # when button_down? Gosu::Button::KbNumpadSubtract
    #   @mandelbrot.zoom_out
    # else
    #   @mandelbrot.update
    # end
  end

  def draw
    Mandelbrot.new(self).draw
    # @text.draw "center: #{@mandelbrot.px_to_com self.width*0.5, self.height*0.5 } coords: #{@mandelbrot.center}, iterations: #{@mandelbrot.iter}"
  end

end

window = GameWindow.new
window.show
