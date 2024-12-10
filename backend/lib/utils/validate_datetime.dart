bool isValidDateTime(String dateTime) {
  final iso8601Pattern = r'^(\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}(?:\.\d+)?(?:Z|[+-]\d{2}:\d{2}))$';
  final regex = RegExp(iso8601Pattern);
  return regex.hasMatch(dateTime);
}