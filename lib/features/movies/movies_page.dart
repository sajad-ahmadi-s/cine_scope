import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reel_glass/features/movies/cubit/movies_cubit.dart';
import 'package:reel_glass/features/movies/data/movies_repository.dart';
import 'package:reel_glass/features/movies/widgets/movie_tile.dart';

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
            padding: EdgeInsets.all(16.0),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 2 / 3,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: 20,
            itemBuilder: (context, index) =>
                MovieTile(movie: state.movies[index]),
          );
        },
      ),
    );
  }
}
