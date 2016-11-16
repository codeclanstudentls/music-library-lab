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
  'title' => 'Dark Side of the Moon',
  'genre' => 'Prog Rock',
  'year' => 1973,
  'artist_id' => artist1.id
  })

album2 = Album.new({ 
  'title' => 'Thriller',
  'genre' => 'Pop',
  'year' => 1982,
  'artist_id' => artist2.id
  })

album3 = Album.new({

  'title' => 'Wish You Were Here',
  'genre' => 'Prog Rock',
  'year' => 1975,
  'artist_id' => artist1.id
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