bool isValidPayload(Map<String, dynamic> payload, List<String> requiredFields,
    Map<String, List<dynamic>> enumFieldsToValidate) {

  // Check if required fields are present
  for (final field in requiredFields) {
    if (payload[field] == null) return false;
  }

  for (final fieldKey in enumFieldsToValidate.keys) {
    final allowedEnums = enumFieldsToValidate[fieldKey];
    final payloadValue = payload[fieldKey];

    if (allowedEnums == null || payloadValue == null) {
      return false;
    }

    if (!allowedEnums.any((enumValue) => enumValue.name == payloadValue)) {
      return false;
    }
  }

  return true;
}
