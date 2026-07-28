import 'package:go_router/go_router.dart';
import 'package:reel_glass/features/movies/movie_details_page.dart';
import 'package:reel_glass/features/movies/movies_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => MoviesPage()),
    GoRoute(path: '/movies/:id', builder: (context, state) => MovieDetailsPage()),
  ],
);
