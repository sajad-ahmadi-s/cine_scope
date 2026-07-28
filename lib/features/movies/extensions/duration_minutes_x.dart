extension DurationMinutesX on int {
  String toHoursMinutes() {
    final hours = this ~/ 60;
    final minutes = this % 60;

    return '${hours}h ${minutes}m';
  }
}