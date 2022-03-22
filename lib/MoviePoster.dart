import 'package:flutter/material.dart';

class MoviePoster extends StatelessWidget {
  final String poster;

  const MoviePoster({
    Key? key,
    required this.poster,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: MediaQuery.of(context).size.width / 4,
          height: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(poster),
              fit: BoxFit.cover,
            )
          ),
        ),
      ),
    );
  }
}
