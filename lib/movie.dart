class Movie {
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String image;

  const Movie({
    required this.title,
    required this.genre,
    required this.year,
    required this.rating,
    required this.image,
  });
}

const List<Movie> movies = [
  Movie(
    title: 'Iron Man',
    genre: 'Action / Sci-Fi',
    year: 2008,
    rating: 7.9,
    image: 'assets/posters/Iron_Man.jpg',
  ),
  Movie(
    title: 'The Avengers',
    genre: 'Action / Sci-Fi',
    year: 2012,
    rating: 8.0,
    image: 'assets/posters/The_Avengers.jpg',
  ),
  Movie(
    title: 'Captain America: The Winter Soldier',
    genre: 'Action / Thriller',
    year: 2014,
    rating: 7.7,
    image: 'assets/posters/Captain_America_The_Winter_Soldier_poster.jpg',
  ),
  Movie(
    title: 'Guardians of the Galaxy',
    genre: 'Sci-Fi / Comedy',
    year: 2014,
    rating: 8.0,
    image: 'assets/posters/Guardians_of_the_Galaxy.jpg',
  ),
  Movie(
    title: 'Doctor Strange',
    genre: 'Fantasy / Adventure',
    year: 2016,
    rating: 7.5,
    image: 'assets/posters/Doctor_Strange.jpg',
  ),
  Movie(
    title: 'Thor: Ragnarok',
    genre: 'Comedy / Adventure',
    year: 2017,
    rating: 7.9,
    image: 'assets/posters/Thor_Ragnarok_poster.jpg',
  ),
  Movie(
    title: 'Spider-Man: Homecoming',
    genre: 'Action / Adventure',
    year: 2017,
    rating: 7.4,
    image: 'assets/posters/Spider-Man_Homecoming.jpg',
  ),
  Movie(
    title: 'Black Panther',
    genre: 'Action / Drama',
    year: 2018,
    rating: 7.3,
    image: 'assets/posters/Black_Panther.jpg',
  ),
  Movie(
    title: 'Avengers: Infinity War',
    genre: 'Action / Sci-Fi',
    year: 2018,
    rating: 8.4,
    image: 'assets/posters/Avengers_Infinity_War.jpg',
  ),
  Movie(
    title: 'Avengers: Endgame',
    genre: 'Action / Drama',
    year: 2019,
    rating: 8.4,
    image: 'assets/posters/Avengers_Endgame.jpg',
  ),
];