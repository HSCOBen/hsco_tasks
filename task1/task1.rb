require "mini_magick"

image = MiniMagick::Image.open("https://s3.us-east-2.amazonaws.com/hawthorne-s3-bucket/static-image-assets/Logo+FINAL+PNG.png")
image.contrast
image.write("from_internets.jpg")

puts 'DONE'