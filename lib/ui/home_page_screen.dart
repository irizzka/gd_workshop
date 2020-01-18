import 'package:flutter/material.dart';
import 'package:flutter_movi_demo/bloc/block_provider.dart';
import 'package:flutter_movi_demo/bloc/fetch_movie_bloc.dart';
import 'package:flutter_movi_demo/data/movie.dart';

import 'movi_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    var bloc = BlocProvider.of<MovieBloc>(context);
    bloc.fetchMovie();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: StreamBuilder<List<Movie>>(
        stream: bloc.movieStream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return buildMovieList(snapshot.data);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        }
      ),
    );
  }


  Widget buildMovieList(List<Movie> list) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return MovieItem();
        });
  }
}

