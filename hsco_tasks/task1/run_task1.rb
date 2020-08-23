require "mini_magick"

MiniMagick::Tool::Convert.new do |convert|
  convert << "websitetemplate.jpg"
  convert.merge! ["-fx","'r < (230/255) ? #0000FF : u'"]
  convert << "websitetemplate2.jpg"
end
