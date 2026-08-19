# CineScope

CineScope is a modern Flutter movie discovery app for browsing films, filtering by genre, and exploring detailed movie and cast information in a cinematic interface.

## Features

- Browse a curated movie catalog
- Filter movies by genre
- View ratings, release dates, runtime, and summaries
- Explore cast members and character details
- Open dedicated movie detail pages
- Responsive macOS and Flutter UI

## Tech stack

- Flutter and Dart
- `flutter_bloc` for state management
- `go_router` for navigation
- `dart_mappable` for typed model mapping
- `cached_network_image` for poster images

## Getting started

### Requirements

- Flutter stable
- Dart 3.11 or later

### Run locally

```bash
flutter pub get
flutter run
```

### Run checks

```bash
flutter analyze
flutter test
```

### Regenerate model files

Generated Dart files are excluded from Git. Regenerate them when needed:

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Project structure

```text
lib/
├── app/                    # App configuration, theme, and routing
├── features/movies/
│   ├── cubit/              # Movie state and orchestration
│   ├── data/               # Movie repository and sample data
│   ├── logic/              # Filtering logic
│   ├── models/             # Movie and cast models
│   └── widgets/            # Reusable movie UI components
└── main.dart               # Application entry point
```

## TMDB attribution

If TMDB data or images are enabled, include the following notice prominently in the application:

> This product uses the TMDB API but is not endorsed or certified by TMDB.

Learn more in the [TMDB API documentation](https://developer.themoviedb.org/docs/getting-started).
