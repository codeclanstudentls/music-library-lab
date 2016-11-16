require('pg')
require_relative('../db/sql_runner')

class Album
  attr_accessor :title, :genre, :year, :artist_id 
  attr_reader :id

  def initialize( options )
    @title = options['title']
    @genre = options['genre']
    @year = options['year'].to_i
    @id = options['id'].to_i if options['id']
    @artist_id = options['artist_id'].to_i
  end

  def save
    sql = "INSERT INTO albums (title, genre, year, artist_id) VALUES ('#{@title}', '#{@genre}', #{@year}, #{artist_id}) RETURNING *;"

    result = SqlRunner.run(sql)
    @id = result[0]['id'].to_i
  end

  def update
    sql = "UPDATE albums SET (title, genre, year, artist_id) = ('#{@title}', '#{@genre}', #{@year}, #{@artist_id}) WHERE id = #{@id};"
    SqlRunner.run(sql)
  end

def delete
  return unless @id
  sql = "DELETE FROM albums WHERE id = #{@id};"
  SqlRunner.run(sql)
end

  def self.all
    sql = "SELECT * FROM albums;"
    albums = SqlRunner.run(sql)
    return albums.map { |album| Album.new(album) }
  end

  def self.delete_all()
    sql = "DELETE FROM albums;"
    SqlRunner.run(sql)
  end

  def artist()
    sql = "SELECT * FROM artists WHERE id = #{@artist_id};"
    result = SqlRunner.run(sql)
    artist = Artist.new(result[0])
    return artist
  end

  
end