import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:cine_scope/features/movies/models/movie.dart';
import 'package:cine_scope/features/movies/widgets/movie_hover_overlay.dart';
import 'package:cine_scope/features/movies/widgets/movie_poster_placeholder.dart';

class MovieCard extends StatefulWidget {
  const MovieCard({super.key, required this.movie});

  final Movie movie;

  @override
  State<MovieCard> createState() => _MovieCardState();
}

class _MovieCardState extends State<MovieCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => setState(() => _isHovered = true),
      onExit: (event) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: () {
          context.push('/movies/${widget.movie.id}', extra: widget.movie);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Stack(
            children: [
              CachedNetworkImage(
                imageUrl: widget.movie.posterPath,
                placeholder: (context, url) =>
                    const Center(child: MoviePosterPlaceholder()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Positioned.fill(
                child: MovieHoverOverlay(
                  isHovered: _isHovered,
                  movie: widget.movie,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
