Map<String, dynamic> extractUpdatableFields(
    Map<String, dynamic> payload, List<String> updatableFields) {
  return Map.fromEntries(payload.entries.where(
      (entry) => updatableFields.contains(entry.key) && entry.value != null));
}
