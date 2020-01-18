import 'package:flutter_movi_demo/data/movie.dart';

class Repo {
  static final Repo _instance = Repo._internal();

  factory Repo() {
    return _instance;
  }

  Repo._internal();

  Future<List<Movie>> fetchMovie() =>
     Future.delayed(Duration(seconds: 3), () =>  movieSubs);
}

var movieSubs = [
  Movie.defaultMovie(),
  Movie.defaultMovie(),
  Movie.defaultMovie(),
  Movie.defaultMovie(),
  Movie.defaultMovie(),
  Movie.defaultMovie(),
  Movie.defaultMovie(),
  Movie.defaultMovie()
];