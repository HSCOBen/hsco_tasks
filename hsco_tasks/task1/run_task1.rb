require "mini_magick"

MiniMagick::Tool::Convert.new do |convert|
  convert << "Websitetemplate.tif"
  convert.merge! ["-fx","'r < (230/255) ? #0000FF : u'"]
  convert << "Websitetemplate2.tif"
end
