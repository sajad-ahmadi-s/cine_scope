import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:reel_glass/features/movies/models/movie.dart';
import 'package:reel_glass/features/movies/widgets/movie_details_overlay.dart';

class MovieTile extends StatefulWidget {
  const MovieTile({super.key, required this.movie});

  final Movie movie;

  @override
  State<MovieTile> createState() => _MovieTileState();
}

class _MovieTileState extends State<MovieTile> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => _isHovered = true),
      onExit: (event) => setState(() => _isHovered = false),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Stack(
          children: [
            CachedNetworkImage(
              imageUrl: widget.movie.posterPath,
              placeholder: (context, url) =>
                  const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned.fill(
              child: MovieDetailsOverlay(
                isHovered: _isHovered,
                description: widget.movie.overview,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
