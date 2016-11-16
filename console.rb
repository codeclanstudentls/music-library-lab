require('pry-byebug')
require_relative('models/album')
require_relative('models/artist')

Album.delete_all
Artist.delete_all


artist1 = Artist.new({ 'name' => 'Pink Floyd'})
artist2 = Artist.new({ 'name' => 'Michael Jackson'})

artist1.save()
artist2.save()

album1 = Album.new({
  'artist_id' => artist1.id,
  'title' => 'Dark Side of the Moon',
  'genre' => 'Prog Rock'
  })

album2 = Album.new({
  'artist_id' => artist2.id,
  'title' => 'Thriller',
  'genre' => 'Pop'
  })

album3 = Album.new({
  'artist_id' => artist1.id,
  'title' => 'Wish You Were Here',
  'genre' => 'Prog Rock'
  })

album1.save()
album2.save()
album3.save()

#album2.delete()

album1.title = 'The Wall'
album1.update()

albums = Album.all()

artists = Artist.all()


binding.pry
nil