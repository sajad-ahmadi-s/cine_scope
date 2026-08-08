import 'package:flutter/material.dart';

class GenreFilter extends StatelessWidget {
  const GenreFilter({
    super.key,
    required this.genres,
    required this.selectedGenres,
    required this.onGenreSelected,
  });

  final List<String> genres;
  final List<String> selectedGenres;
  final ValueChanged<String> onGenreSelected;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Wrap(
      spacing: 6,
      runSpacing: 6,
      children: genres.map((genre) {
        final isSelected = selectedGenres.contains(genre);

        return ChoiceChip(
          label: Text(
            genre,
            style: textTheme.labelSmall?.copyWith(
              color: isSelected
                  ? colorScheme.onSecondaryContainer
                  : colorScheme.onSurfaceVariant,
              fontWeight: isSelected
                  ? FontWeight.w600
                  : FontWeight.normal,
            ),
          ),
          selected: isSelected,
          onSelected: (_) => onGenreSelected(genre),
          showCheckmark: false,
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
            vertical: 2,
          ),
          labelPadding: EdgeInsets.zero,
          visualDensity: const VisualDensity(
            horizontal: -2,
            vertical: -2,
          ),
          backgroundColor: colorScheme.surface.withValues(alpha: 0.25),
          selectedColor: colorScheme.secondaryContainer.withValues(
            alpha: 0.85,
          ),
          side: BorderSide(
            color: colorScheme.outline.withValues(alpha: 0.35),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        );
      }).toList(),
    );
  }
}