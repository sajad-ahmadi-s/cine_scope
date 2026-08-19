import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cine_scope/features/movies/cubit/movies_cubit.dart';
import 'package:cine_scope/features/movies/data/movies_repository.dart';
import 'package:cine_scope/features/movies/widgets/movie_card.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MoviesCubit(repository: MoviesRepository())..getMovies(),
      child: const MoviesView(),
    );
  }
}

class MoviesView extends StatelessWidget {
  const MoviesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Movies')),
      body: BlocBuilder<MoviesCubit, MoviesState>(
        builder: (context, state) {
          return GridView.builder(
            padding: const EdgeInsets.all(16.0),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: state.displayedMovies.length,
            itemBuilder: (context, index) =>
                MovieCard(movie: state.displayedMovies[index]),
          );
        },
      ),
    );
  }
}
