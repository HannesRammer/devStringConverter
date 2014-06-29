DefStringConverter
=====================
I wrote this package since I realised 
I need this for quite a few projects when hitting dynamic code generation

This package helps you to convert the format of specific strings  

input strings

["Test Title", "Test word", "test Word", "table_name", "poly-name", "varName", "Title", "ClassName"]

output should be

---toTableName---
test_title
test_word
test_word
table_name
poly_name
var_name
title
class_name

---toVarName---
testTitle
testWord
testWord
tableName
polyName
varName
title
className

---toClassName---
TestTitle
TestWord
TestWord
TableName
PolyName
VarName
Title
ClassName

---toPolyName---
test-title
test-word
test-word
table-name
poly-name
var-name
title
class-name

Example
-------

String polyName = DevStringConverter.toPolyName("CustomPolymerItem");

Enjoy ;)