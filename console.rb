require('pry-byebug')
require_relative('models/album')
require_relative('models/artist')
require_relative('models/track')

Album.delete_all
Artist.delete_all



artist1 = Artist.new({ 'name' => 'Ben Sims'})
artist2 = Artist.new({ 'name' => 'Surgeon'})
artist3 = Artist.new({ 'name' => 'Carl Craig'})
artist4 = Artist.new({ 'name' => 'Laurent Garnier'})
artist5 = Artist.new({ 'name' => 'Planetary Assault Systems'})
artist5 = Artist.new({ 'name' => 'Vatican Shadow'})
artist6 = Artist.new({ 'name' => 'Robert Hood'})
artist7 = Artist.new({ 'name' => 'Drexiya AKA Alden Tyrell'})


artist1.save()
artist2.save()
artist3.save()
artist4.save()
artist5.save()
artist6.save()
artist7.save()


album1 = Album.new({
  'title' => 'Fabric 73',
  'genre' => 'Techno',
  'year' => 2013,
  'artist_id' => artist1.id
  })

album2 = Album.new({ 
  'title' => 'Fabric 53',
  'genre' => 'Techno',
  'year' => 2010,
  'artist_id' => artist2.id
  })

album3 = Album.new({

  'title' => 'Journey of the deep sea dweller',
  'genre' => 'Techno',
  'year' => 1992,
  'artist_id' => artist7.id
  })

album1.save()
album2.save()
album3.save()

track1 = Track.new({
  'track_title' => 'Compliance Momentum',
  'track_id' => artist2.id,
  'album_id' => track_id 

  })

track2 = Track.new({
  'track_title' => 'Superman',
  'track_id' => artist6.id,
  'album_id' => track_id
  })

track3 = Track.new({
  'track_title' => 'X Speaks to X',
  'track_id' => artist5.id,
  'album_id' => track_id
  })

track4 = Track.new({
  'track_title' => 'The Mutant Gillmen',
  'track_id' => artist7.id,
  'album_id' => track_id
  })

track1.save()
track2.save()
track3.save()
track4.save()


#album2.delete()

#album2.title = 'Fabric 69' 
#album2.year = 2013 
#album2.update()

albums = Album.all()

artists = Artist.all()

tracks = Track.all()

binding.pry
nil