import 'dart:ui';

import 'package:flutter/material.dart';

class MovieDetailsOverlay extends StatelessWidget {
  const MovieDetailsOverlay({
    super.key,
    required this.isHovered,
    required this.description,
  });

  final bool isHovered;
  final String description;

  @override
  Widget build(BuildContext context) {
    return AnimatedSlide(
      offset: !isHovered ? Offset(0, 1) : Offset.zero,
      duration: const Duration(milliseconds: 300),
      child: AnimatedOpacity(
        opacity: !isHovered ? 0 : 1,
        duration: const Duration(milliseconds: 400),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
          child: Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.05),
            ),
            child: Text(description),
          ),
        ),
      ),
    );
  }
}
