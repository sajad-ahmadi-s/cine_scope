import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:reel_glass/features/movies/models/models.dart';

class CastCard extends StatelessWidget {
  const CastCard({super.key, required this.castMember});

  final CastMember castMember;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return SizedBox(
      width: 120,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: CachedNetworkImage(
              imageUrl: castMember.photoPath,
              width: 100,
              height: 170,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            castMember.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: textTheme.titleMedium,
          ),
          const SizedBox(height: 2),
          Text(
            castMember.character,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: textTheme.bodySmall?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
        ],
      ),
    );
  }
}
