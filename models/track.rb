require('pg')
require_relative('../db/sql_runner')

class Track
  attr_accessor :track_title  #I don't think I should have these here I thought tracks and lengths would just need to be readable not read and write? as an album isn't going to need it's tracks changed
  attr_reader :id

def initialize( options )
  @track_title = options['track_title']
  @id = options['id'].to_i if options['id']
  @album_id = options['album_id'].to_i
end

def save()
  sql = "INSERT INTO tracks (track_title) VALUES ('#{@track_title}') RETURNING *;"
  result = SqlRunner.run(sql)
  @id = result[0]['id'].to_i
end







end