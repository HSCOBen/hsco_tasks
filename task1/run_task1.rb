require "mini_magick"

INPUT_IMAGE_PATH = "input/5f217ff5effd2.jpg"

image = MiniMagick::Image.open(INPUT_IMAGE_PATH)
image_pixels = image.get_pixels

(1..image.width).each { |x|
  (1..image.height).each { |y|
    puts "At pixel (" + x.to_s + "," + y.to_s + "), RGB Color: " + image_pixels[x][y].to_s
  }
}