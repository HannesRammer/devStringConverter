##DefStringConverter 0.1.0
---

I wrote this package since I realised 
I need this for quite a few projects when hitting dynamic code generation

This package helps you to convert the format of specific strings  

---

###Input string styles currently recognized


    "Test Title", "Test word", "test Word", "table_name", 
    "poly-name", "varName", "Title", "ClassName", "CONST_NAME"


###Output should be

    toVarName(string) ||
    toLowerCamelCase(string)
    "testTitle", "testWord", "testWord", "tableName", 
    "polyName", "varName", "title", "className", "constName"

    toClassName(string) ||
    toUpperCamelCase(string)
    "TestTitle", "TestWord", "TestWord", "TableName", 
    "PolyName", "VarName", "Title", "ClassName", "ConstName"

    toPolyName(string) || 
    toLowerCaseWith(string,"-")
    "test-title", "test-word", "test-word", "table-name", 
    "poly-name", "var-name", "title", "class-name", "const-name"

    toTableName(string) ||
    toLowerCaseWith(string,"_")
    "test_title", "test_word", "test_word", "table_name", 
    "poly_name", "var_name", "title", "class_name", "const_name"
 
    toConstName(string) ||
    toUpperCaseWith(string,"_")
    "TEST_TITLE", "TEST_WORD", "TEST_WORD", "TABLE_NAME", 
    "POLY_NAME", "VAR_NAME", "TITLE", "CLASS_NAME", "CONST_NAME"
 
---
###Example
      String polyName = toPolyName("CustomPolymerItem");

---
Enjoy ;)