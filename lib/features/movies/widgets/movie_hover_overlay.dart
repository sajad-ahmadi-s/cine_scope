import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cine_scope/features/movies/cubit/movies_cubit.dart';
import 'package:cine_scope/features/movies/models/movie.dart';
import 'package:cine_scope/features/movies/widgets/genre_filter.dart';

class MovieHoverOverlay extends StatelessWidget {
  const MovieHoverOverlay({
    super.key,
    required this.isHovered,
    required this.movie,
  });

  final bool isHovered;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final selectedGenres = context.select(
      (MoviesCubit cubit) => cubit.state.query.genres,
    );

    return AnimatedSlide(
      offset: isHovered ? Offset.zero : const Offset(0, 1),
      duration: const Duration(milliseconds: 250),
      child: AnimatedOpacity(
        opacity: isHovered ? 1 : 0,
        duration: const Duration(milliseconds: 250),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: colorScheme.surface.withValues(alpha: 0.35),
              border: Border.all(
                color: colorScheme.outline.withValues(alpha: 0.35),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${movie.title} (${movie.releaseYear})',
                    style: textTheme.titleMedium?.copyWith(
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    movie.overview,
                    style: textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 12),
                  GenreFilter(
                    genres: movie.genres,
                    selectedGenres: selectedGenres,
                    onGenreSelected: context.read<MoviesCubit>().toggleGenre,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
