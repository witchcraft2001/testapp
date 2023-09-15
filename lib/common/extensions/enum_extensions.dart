extension EnumByName<T extends Enum> on Iterable<T> {
  T byNameOrElse(String name, T? elseValue) {
    try {
      return byName(name);
    } catch (_) {
      if (elseValue != null) {
        return elseValue;
      }
      rethrow;
    }
  }

  T? byNameOrNull(String name) {
    try {
      return byName(name);
    } catch (_) {
      return null;
    }
  }
}
