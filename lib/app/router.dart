import 'package:go_router/go_router.dart';
import 'package:cine_scope/features/movies/models/movie.dart';
import 'package:cine_scope/features/movies/movie_details_page.dart';
import 'package:cine_scope/features/movies/movies_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const MoviesPage()),
    GoRoute(
      path: '/movies/:id',
      builder: (context, state) {
        final movie = state.extra! as Movie;

        return MovieDetailsPage(movie: movie);
      },
    ),
  ],
);
