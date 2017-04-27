# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'album_data.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  puts row.to_hash
  album = Album.new
  album.ranking = row['ranking']
  album.artist = row['artist']
  album.album = row['album']
  album.image = row['image']
  album.year = row['year']
  album.save
  puts "#{album.artist}, #{album.album} saved"
end

puts "There are now #{Album.count} rows in the albums table"
