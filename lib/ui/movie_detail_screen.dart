
import 'package:flutter/material.dart';
import 'package:flutter_movi_demo/data/movie.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie _detail;

  MovieDetailScreen(this._detail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movie"),
      ),
      body: Center(child: Text(_detail.title)),
    );
  }
}
