import 'package:flutter/material.dart';
import 'package:reel_glass/features/movies/models/movie.dart';
import 'package:reel_glass/features/movies/widgets/cast_section.dart';
import 'package:reel_glass/features/movies/widgets/movie_details_header.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            MovieDetailsHeader(movie: movie),
            CastSection(casts: movie.cast),
          ],
        ),
      ),
    );
  }
}
