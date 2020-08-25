require "mini_magick"

def update_color_in_image(input_image_path, hex_color_to_find, hex_color_to_change_to, color_name)
  MiniMagick::Tool::Convert.new do |convert|
    convert << input_image_path
    convert.merge! ["-fx","'r < (230/255) ? #" + hex_color_to_change_to + " : u'"]
    convert << color_name + ".jpg"
  end
end

update_color_in_image("websitetemplate.jpg", "", "7aa36a", "Pistachio")

