require 'open-uri'
Movie.destroy_all

url = 'http://tmdb.lewagon.com/movie/top_rated'
response = JSON.parse(URI.open(url).read)

response['results'].each do |movie_hash|
  p movie_hash
  Movie.create!(
    title: movie_hash["original_title"],
    overview: movie_hash["overview"],
    poster_url: "https://image.tmdb.org/t/p/w500" + movie_hash['poster_path']
  )
end
