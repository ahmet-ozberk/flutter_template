extension StringExtension on String {
  String get capitalize => this[0].toUpperCase() + substring(1);
  String get trimAllRegex => replaceAll(RegExp(r"\s+\b|\b\s"), "");
  String get trimAll => replaceAll(" ", "");
  String get capitalizeEach =>
      split(" ").map((e) => e[0].toUpperCase() + e.substring(1)).join(" ");
  String get capitalizeEachFirst =>
      split(" ").map((e) => e[0].toUpperCase() + e.substring(1)).join(" ");
  String get capitalizeEachFirstLower => split(" ")
      .map((e) => e[0].toUpperCase() + e.substring(1))
      .join(" ")
      .toLowerCase();
  String get capitalizeEachLower =>
      split(" ").map((e) => e.toLowerCase()).join(" ");
  String get capitalizeEachLowerFirst =>
      split(" ").map((e) => e[0].toLowerCase() + e.substring(1)).join(" ");
  String get capitalizeEachLowerFirstUpper => split(" ")
      .map((e) => e[0].toUpperCase() + e.substring(1))
      .join(" ")
      .toLowerCase();
  String get capitalizeEachUpper =>
      split(" ").map((e) => e.toUpperCase()).join(" ");
  String get capitalizeEachUpperFirst =>
      split(" ").map((e) => e[0].toUpperCase() + e.substring(1)).join(" ");
  String get capitalizeEachUpperFirstLower => split(" ")
      .map((e) => e[0].toLowerCase() + e.substring(1))
      .join(" ")
      .toUpperCase();
  String get capitalizeEachUpperLower =>
      split(" ").map((e) => e.toLowerCase()).join(" ");
  String get capitalizeEachUpperLowerFirst => split(" ")
      .map((e) => e[0].toLowerCase() + e.substring(1))
      .join(" ")
      .toUpperCase();

  DateTime get toDate => DateTime.parse(this);

  String get filter => replaceAll(RegExp(r"[^a-zA-Z0-9]"), "");
  String get filterNumber => replaceAll(RegExp(r"[^0-9]"), "");
  String get filterNumberDecimal => replaceAll(RegExp(r"[^0-9.]"), "");
  String get filterNumberDecimalComma =>
      replaceAll(RegExp(r"[^0-9,]"), "");
  String get filterNumberDecimalCommaDot =>
      replaceAll(RegExp(r"[^0-9.,]"), "");
  String get filterNumberDecimalCommaDotSpace =>
      replaceAll(RegExp(r"[^0-9., ]"), "");
  String get filterNumberDecimalCommaDotSpaceSpace =>
      replaceAll(RegExp(r"[^0-9., ] "), "");
  String get filterNumberDecimalCommaDotSpaceSpaceSpace =>
      replaceAll(RegExp(r"[^0-9., ]  "), "");

  String get forEach =>
      split(" ").map((e) => e[0].toUpperCase() + e.substring(1)).join(" ");
  String get forEachFirst =>
      split(" ").map((e) => e[0].toUpperCase() + e.substring(1)).join(" ");
  String get forEachFirstLower => split(" ")
      .map((e) => e[0].toUpperCase() + e.substring(1))
      .join(" ")
      .toLowerCase();
  String get forEachLower =>
      split(" ").map((e) => e.toLowerCase()).join(" ");
  String get forEachLowerFirst =>
      split(" ").map((e) => e[0].toLowerCase() + e.substring(1)).join(" ");
  String get forEachLowerFirstUpper => split(" ")
      .map((e) => e[0].toUpperCase() + e.substring(1))
      .join(" ")
      .toLowerCase();
  String get forEachUpper =>
      split(" ").map((e) => e.toUpperCase()).join(" ");
  String get forEachUpperFirst =>
      split(" ").map((e) => e[0].toUpperCase() + e.substring(1)).join(" ");
  String get forEachUpperFirstLower => split(" ")
      .map((e) => e[0].toLowerCase() + e.substring(1))
      .join(" ")
      .toUpperCase();
  String get forEachUpperLower =>
      split(" ").map((e) => e.toLowerCase()).join(" ");
  String get forEachUpperLowerFirst => split(" ")
      .map((e) => e[0].toLowerCase() + e.substring(1))
      .join(" ")
      .toUpperCase();
  String get forEachUpperLowerFirstUpper => split(" ")
      .map((e) => e[0].toUpperCase() + e.substring(1))
      .join(" ")
      .toLowerCase();

  bool get isPhoneNumber => length == 11 && startsWith("0");
  bool get isPhoneNumberWithCountryCode =>
      length == 13 && startsWith("+");
  bool get isPhoneNumberWithCountryCodeAndSpace =>
      length == 14 && startsWith("+ ");

  bool get isPassword => length >= 8;

  String get lower => toLowerCase();
  String get lowerFirst => this[0].toLowerCase() + substring(1);
  String get lowerFirstUpper =>
      this[0].toUpperCase() + substring(1).toLowerCase();
  String get lowerFirstUpperLower =>
      this[0].toLowerCase() + substring(1).toLowerCase();
  String get lowerFirstUpperLowerFirst =>
      this[0].toLowerCase() +
      substring(1).toLowerCase() +
      substring(2);
  String get lowerFirstUpperLowerFirstUpper =>
      this[0].toUpperCase() +
      substring(1).toLowerCase() +
      substring(2).toLowerCase();
  String get lowerFirstUpperLowerFirstUpperLower =>
      this[0].toLowerCase() +
      substring(1).toLowerCase() +
      substring(2).toLowerCase();
  String get lowerFirstUpperLowerFirstUpperLowerFirst =>
      this[0].toLowerCase() +
      substring(1).toLowerCase() +
      substring(2).toLowerCase() +
      substring(3);

  bool get isTurkeyPhoneNumber => length == 10 && startsWith("5");
  bool get isTurkeyPhoneNumberWithCountryCode =>
      length == 13 && startsWith("+90");
  bool get isTurkeyPhoneNumberWithCountryCodeAndSpace =>
      length == 14 && startsWith("+90 ");

  bool get isEmail => contains("@") && contains(".");
  bool get isEmailWithSpace => contains(" @");
  bool get isEmailWithSpaceSpace => contains(" @ ");

  bool get isUrl =>
      contains(".com") ||
      contains(".net") ||
      contains(".org") ||
      contains(".io") ||
      contains(".me") ||
      contains(".info") ||
      contains(".biz") ||
      contains(".name") ||
      contains(".co") ||
      contains(".tv") ||
      contains(".us") ||
      contains(".uk") ||
      contains(".ca") ||
      contains(".de") ||
      contains(".fr") ||
      contains(".it") ||
      contains(".ru") ||
      contains(".es") ||
      contains(".nl") ||
      contains(".se") ||
      contains(".no") ||
      contains(".pl") ||
      contains(".ch") ||
      contains(".jp") ||
      contains(".cn") ||
      contains(".in") ||
      contains(".br") ||
      contains(".au") ||
      contains(".nz") ||
      contains(".tr") ||
      contains(".kr") ||
      contains(".tw") ||
      contains(".hk") ||
      contains(".my");

  bool get isUrlWithSpace =>
      contains(".com ") ||
      contains(".net ") ||
      contains(".org ") ||
      contains(".io ") ||
      contains(".me ") ||
      contains(".info ") ||
      contains(".biz ") ||
      contains(".name ") ||
      contains(".co ") ||
      contains(".tv ") ||
      contains(".us ") ||
      contains(".uk ") ||
      contains(".ca ") ||
      contains(".de ") ||
      contains(".fr ") ||
      contains(".it ") ||
      contains(".ru ") ||
      contains(".es ") ||
      contains(".nl ") ||
      contains(".se ") ||
      contains(".no ") ||
      contains(".pl ") ||
      contains(".ch ") ||
      contains(".tr ") ||
      contains(".jp ") ||
      contains(".cn ") ||
      contains(".in ") ||
      contains(".br ") ||
      contains(".au ") ||
      contains(".nz ") ||
      contains(".kr ") ||
      contains(".tw ") ||
      contains(".hk ") ||
      contains(".my ");

  bool get isEmpty => trim().isEmpty;

  DateTime? get dateTime => DateTime.tryParse(this);

  bool get isDateTime => dateTime != null;

  bool get isNotDateTime => dateTime == null;

  bool get isDateTimeFormat =>
      isDateTime && dateTime.toString().contains(" ");

  bool get isNotDateTimeFormat =>
      isDateTime && !dateTime.toString().contains(" ");

  String get dateTimeFormat =>
      isDateTime ? dateTime.toString().split(" ")[0] : "";
  String get dateTimeFormatWithSpace =>
      isDateTime ? "${dateTime.toString().split(" ")[0]} " : "";

  bool isNumericOnly() => RegExp(r'^\d+$').hasMatch(this);
  bool isAlphabetOnly() => RegExp(r'^[a-zA-Z]+$').hasMatch(this);

  bool isSearch(String search) =>
      trim().toLowerCase().contains(search.trim().toLowerCase());

  bool isSearchList(List<String> searchList) {
    for (var search in searchList) {
      if (isSearch(search)) {
        return true;
      }
    }
    return false;
  }

  bool get isIbanNumber => length == 32;
  bool get isTurkeyIbanNumber => length == 32 && startsWith("TR");

  String get toTurkishPhoneNumber {
    if (isTurkeyPhoneNumber) {
      return "0$this";
    } else if (isTurkeyPhoneNumberWithCountryCode) {
      return substring(3);
    } else if (isTurkeyPhoneNumberWithCountryCodeAndSpace) {
      return substring(4);
    } else {
      return this;
    }
  }

}
