import 'package:flutter/material.dart';
import 'package:cine_scope/features/movies/models/movie.dart';
import 'package:cine_scope/features/movies/widgets/cast_section.dart';
import 'package:cine_scope/features/movies/widgets/movie_details_header.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 48),
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
