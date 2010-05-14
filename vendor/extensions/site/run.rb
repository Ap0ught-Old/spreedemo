#!/usr/bin/env ruby

require 'RMagick'
include Magick

basedir = '.'
files = Dir.glob("*.png")
i = Image.read(files.first).first
height = i.rows
width = i.columns

dimension1 = Math.sqrt(files.size).to_i
dimension2 = dimension1 + 1
t = []
(0..dimension2).each { |i| t[i] = ImageList.new }

row = 0
all = ImageList.new
o = ['ul#language-bar a { background: url(/images/all_flags.png) no-repeat; display: block; height: ' + height.to_s + 'px; width: 16px; }', 'ul#language-bar li { display: block; float: left; margin-right: 2px; }']
files.each_with_index do |f, i|
  col = i/dimension1
  t[col].read(f)
  o << 'ul#language-bar a#' + File.basename(f, '.png').downcase + ' { background-position: -' + (col*width).to_s + 'px -' + (row*height).to_s + 'px; }'
  row+=1
  if i%dimension1 == dimension1-1 || f == files.last
    row = 0
    b = t[col].append(true)
    b.write("test#{col}.png")
    all.read("test#{col}.png")
  end
end
z = all.append(false)
z.write('/home/spreedemo/live/vendor/extensions/site/public/images/all_flags.png')

Dir.glob("test*").each do |f|
  File.delete(f)
end

File.open('/home/spreedemo/live/vendor/extensions/site/public/stylesheets/flags.css', 'w') { |f| f.write(o.join("\n")) }
