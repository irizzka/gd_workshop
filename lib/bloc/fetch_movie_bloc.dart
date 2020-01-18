import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_movi_demo/data/movie.dart';
import 'package:flutter_movi_demo/networking/repository.dart';
import 'base_bloc.dart';

class MovieBloc extends Bloc {
  final _repo = Repo();

  final _movieListStream = StreamController<List<Movie>>();

  Stream<List<Movie>> get movieStream => _movieListStream.stream;

  void fetchMovie() async {
    var movies = await _repo.fetchMovie();
    _movieListStream.sink.add(movies);
  }

  @override
  void dispose() {
    _movieListStream.close();
  }
}