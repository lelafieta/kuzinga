class AppFuncions {
  static String generateAcronym(String name) {
    if (name.isEmpty) return '';
    String firstLetter = name[0].toUpperCase();
    String lastLetter =
        name.length > 1 ? name[name.length - 1].toUpperCase() : '';
    return '$firstLetter$lastLetter';
  }
}
