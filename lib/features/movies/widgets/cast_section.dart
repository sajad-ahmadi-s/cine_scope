import 'package:flutter/material.dart';
import 'package:cine_scope/features/movies/models/models.dart';
import 'package:cine_scope/features/movies/widgets/cast_card.dart';

class CastSection extends StatelessWidget {
  const CastSection({super.key, required this.casts});

  final List<CastMember> casts;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text('Cast', style: textTheme.titleLarge),
          const SizedBox(height: 16),
          SizedBox(
            height: 225,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: casts.length,
              itemBuilder: (context, index) {
                final castMember = casts[index];
                return CastCard(castMember: castMember);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(width: 16);
              },
            ),
          ),
        ],
      ),
    );
  }
}
