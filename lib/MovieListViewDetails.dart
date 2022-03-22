import 'package:flutter/material.dart';
import 'package:movie_app/HorizontalLine.dart';
import 'package:movie_app/MovieDetailsCast.dart';
import 'package:movie_app/MovieDetailsExtraPosters.dart';
import 'package:movie_app/MovieDetailsHeaderWithPoster.dart';

import 'model/movie.dart';
import './MovieDetailsThumbnail.dart';

class MovieListViewDetails extends StatelessWidget {
  final String movieName;
  final Movie movie;

  const MovieListViewDetails(
      {Key? key, required this.movieName, required this.movie})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Movie Details'),
          backgroundColor: Colors.blueGrey.shade900,
          //automaticallyImplyLeading: false,
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            MovieDetailsThumbnail(thumbnail: movie.images[0]),
            MovieDetailsHeaderWithPoster(movie: movie),
            HorizontalLine(),
            MovieDetailsCast(movie: movie),
            HorizontalLine(),
            MovieDetailsExtraPosters(posters: movie.images),
          ],
        ));
  }
}
