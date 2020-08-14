require "mini_magick"

image = MiniMagick::Image.open("task1/input/image.tif")
puts image.width


puts 'DONE'