library devstringconverter;

class DevStringConverter {
  static String toTableName(String text) {
    return toTableOrPoly(text, "_");
  }

  static String toPolyName(String text) {
    return toTableOrPoly(text, "-");
  }

  static String toTableOrPoly(String text, String sign) {
    String symbol = "";
    String polyName = "";
    if (text.contains(" ")) {
      symbol = " ";
    } else if (text.contains("_")) {
      symbol = "_";
    } else if (text.contains("-")) {
      symbol = "-";
    }
    if (symbol == " " || symbol == "_" || symbol == "-") {
      //Test Title, Test word, test Word, table_name, poly-name
      polyName = text.replaceAll(symbol, sign).toLowerCase();
    } else {
      //varName, Title, ClassName
      List letters = "${text}".split("");
      for (num i = 0; i < letters.length; i++) {
        String letter = letters[i];
        bool isBig = letter == letter.toUpperCase();
        if (isBig) {
          if (i == 0) {
            polyName += "${letter.toLowerCase()}";
          } else {
            polyName += "${sign}${letter.toLowerCase()}";
          }
        } else {
          polyName += letter;
        }
      }
    }
    return polyName;
  }

  static String toVarName(String text) {
    String symbol = "";
    String varName = "";
    if (text.contains(" ")) {
      symbol = " ";
    } else if (text.contains("_")) {
      symbol = "_";
    } else if (text.contains("-")) {
      symbol = "-";
    }
    if (symbol == " " || symbol == "_" || symbol == "-") {
      //Test Title, Test word, test Word, table_name, poly-name
      List words = text.split(symbol);
      int count = 0;
      words.forEach((word) {
        if (count == 0) {
          varName += word.toLowerCase();
          count++;
        } else {
          varName += word.substring(0, 1).toUpperCase() + word.substring(1);
        }
      });
    } else {
      //varName, Title, ClassName
      varName = text.substring(0, 1).toLowerCase() + text.substring(1);
    }
    return varName;
  }

  static String toClassName(String text) {
    String symbol = "";
    String className = "";
    if (text.contains(" ")) {
      symbol = " ";
    } else if (text.contains("_")) {
      symbol = "_";
    } else if (text.contains("-")) {
      symbol = "-";
    }
    if (symbol == " " || symbol == "_" || symbol == "-") {
      //Test Title, Test word, test Word, table_name, poly-name
      List words = text.split(symbol);
      words.forEach((word) {
        className += word.substring(0, 1).toUpperCase() + word.substring(1);
      });
    } else {
      //varName, Title, ClassName
      className = text.substring(0, 1).toUpperCase() + text.substring(1);
    }
    return className;
  }
}
