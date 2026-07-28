import 'dart:ui';

import 'package:flutter/material.dart';

class MovieHoverOverlay extends StatelessWidget {
  const MovieHoverOverlay({
    super.key,
    required this.isHovered,
    required this.description,
  });

  final bool isHovered;
  final String description;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

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
            child: Text(
              description,
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
