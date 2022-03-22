import 'package:flutter/material.dart';
import 'package:movie_app/MovieField.dart';

import 'model/movie.dart';

class MovieDetailsCast extends StatelessWidget {
  final Movie movie;

  const MovieDetailsCast({
    Key? key,
    required this.movie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          MovieField(field: "Cast", value: movie.actors),
          MovieField(field: "Directors", value: movie.director),
          MovieField(field: "Awards", value: movie.awards),

        ],
      ),
    );
  }
}
