library dev_string_converter;

/// toUpperCaseWith("const-name-style", "_")
/// transforms into "CONST_NAME_STYLE"
String toUpperCaseWith(String text, String sign) {
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
    polyName = text.replaceAll(symbol, sign).toUpperCase();
  } else {
    //varName, Title, ClassName
    List letters = "${text}".split("");
    for (num i = 0; i < letters.length; i++) {
      String letter = letters[i];
      bool isBig = letter == letter.toUpperCase();
      if (isBig) {
        if (i == 0) {
          polyName += letter;
        } else {
          polyName += "${sign}${letter}";
        }
      } else {
        polyName += "${letter.toUpperCase()}";
      }
    }
  }
  return polyName;
}

/// transforms into "CONST_NAME_STYLE" 
String toConstName(String text) {
  return toUpperCaseWith(text, "_");
}

/// toLowerCaseWith("HashNameStyle", "#")
/// transforms into "hash#name#style"
/// where # is your input sign
String toLowerCaseWith(String text, String sign) {
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

/// transforms into "db_table_style" 
String toTableName(String text) {
  return toLowerCaseWith(text, "_");
}

/// transforms into "poly-name-style"
String toPolyName(String text) {
  return toLowerCaseWith(text, "-");
}

/// transforms into "lowerCamelCaseStyle"
String toLowerCamelCase(String text) {
  String symbol = "";
  String varName = "";
  if (text.contains(" ")) {
    symbol = " ";
  } else if (text.contains("_")) {
    symbol = "_";
  } else if (text.contains("-")) {
    symbol = "-";
  }
  //Test Title, Test word, test Word, table_name, poly-name
  if (symbol == " " || symbol == "_" || symbol == "-") {
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

/// transforms into "lowerCamelCaseStyle" 
String toVarName(String text) {
  return toLowerCamelCase(text);
}

/// transforms into "UpperCamelCaseStyle" 
String toUpperCamelCase(String text) {
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

/// transforms into "UpperCamelCaseStyle" 
String toClassName(String text) {
  return toUpperCamelCase(text);
}
/*
main() {
  List inputStrings = ["Test Title", "Test word", "test Word", "table_name", "poly-name", "varName", "Title", "ClassName", "CONST_NAME"];

  print("varStyle-----------");
  inputStrings.forEach((string) {
    print(toVarName(string));
  });
  print("----------------------");
  print("varStyle-----------");
  inputStrings.forEach((string) {
    print(toLowerCamelCase(string));
  });
  print("----------------------");


  print("ClassStyle-----------");
  inputStrings.forEach((string) {
    print(toClassName(string));
  });
  print("----------------------");
  print("ClassStyle-----------");
  inputStrings.forEach((string) {
    print(toUpperCamelCase(string));
  });
  print("----------------------");

  print("poly-style-----------");
  inputStrings.forEach((string) {
    print(toPolyName(string));
  });
  print("----------------------");
  print("poly-style-----------");
  inputStrings.forEach((string) {
    print(toLowerCaseWith(string, "-"));
  });
  print("----------------------");

  print("table_style-----------");
  inputStrings.forEach((string) {
    print(toTableName(string));
  });
  print("----------------------");
  print("table_style-----------");
  inputStrings.forEach((string) {
    print(toLowerCaseWith(string, "_"));
  });
  print("----------------------");

  print("CONST_STYLE-----------");
  inputStrings.forEach((string) {
    print(toUpperCaseWith(string, "_"));
  });
  print("----------------------");
  print("CONST_STYLE-----------");
  inputStrings.forEach((string) {
    print(toConstName(string));
  });
  print("----------------------");
}*/
