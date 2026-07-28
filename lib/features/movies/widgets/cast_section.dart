import 'package:flutter/material.dart';
import 'package:reel_glass/features/movies/models/models.dart';

class CastSection extends StatelessWidget {
  const CastSection({super.key, required this.casts});

  final List<CastMember> casts;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    return Column(
      spacing: 12,
      children: [
        Text('Casts', style: textTheme.titleLarge),
        Text(casts.join(' ')),
      ],
    );
  }
}
