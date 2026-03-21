VERSION
-------
    
    0.3.0 -changed Dart SDK to sdk:  '>=2.0.0-dev <3.0.0'
    0.2.0 -changed Dart SDK to sdk: '>=2.0.0-dev.1.2 <2.0.0'
    0.1.0 -changed to top level functions
          -added testMain
          -expanded function names:
          toVarName(x)   <-> toLowerCamelCase(x)
          toClassName(x) <-> toUpperCamelCase(x)
          toConstName(x) <-> toUpperCaseWith(x,"_")
          toTableName(x) <-> toLowerCaseWith(x,"_")
          toPolyName(x)  <-> toLowerCaseWith(x,"-")
