/* Definiçao da Gramática do MiniJava:
   Program → MainClass ClassDecl∗
 MainClass → class id { public static void main ( String [] id )
               { Statement } }
 ClassDecl → class id { VarDecl∗ MethodDecl∗ }
           → class id extends id { VarDecl∗ MethodDecl∗ }
   VarDecl → Type id ;
MethodDecl → public Type id ( FormalList )
               { VarDecl∗ Statement∗ return Exp ; }
FormalList → Type id FormalRest∗
           →
FormalRest → , Type id
      Type → int []
           → boolean
           → int
           → id
 Statement → { Statement∗ }
           → if ( Exp ) Statement else Statement
           → while ( Exp ) Statement
           → System.out.println ( Exp ) ;
           → id = Exp ;
           → id [ Exp ] = Exp ;
       Exp → Exp op Exp
           → Exp [ Exp ]
           → Exp . length
           → Exp . id ( ExpList )
           → INTEGER LITERAL
           → true
           → false
           → id
           → this
           → new int [ Exp ]
           → new id ( )
           → ! Exp
           → ( Exp )
   ExpList → Exp ExpRest∗
           →
   ExpRest → , Exp
*/

grammar MiniJava;

     start : program EOF;
   program : mainClass (classDecl)*;
 mainClass : 'class' ID '{' 'public' 'static' 'void' 'main' '(' 'String' '[' ']' ID ')' '{' statement '}' '}';
 classDecl : 'class' ID '{' (varDecl)* (methodDecl)* '}'
           | 'class' ID 'extends' ID '{' (varDecl)* (methodDecl)* '}'
           ;
   varDecl : type ID ';';
methodDecl : 'public' type ID '(' formalList ')' '{' (varDecl)* (statement)* 'return' exp ';' '}';
formalList : type ID (formalRest)*
           | ;
formalRest : ',' type ID;
      type : 'int' '[' ']'
           | 'boolean'
           | 'int'
           | ID
           ;
 statement : '{' (statement)* '}'
           | 'if' '(' exp ')' statement 'else' statement
           | 'while' '(' exp ')' statement
           | 'System.out.println' '(' exp ')' ';'
           | ID '=' exp ';'
           | ID '[' exp ']' '=' exp ';'
           ;
       exp : exp OP exp
           | exp '[' exp ']'
           | exp '.' 'length'
           | exp '.' ID '(' expList ')'
           | INTEGER_LITERAL
           | 'true'
           | 'false'
           | ID
           | 'this'
           | 'new' 'int' '[' exp ']'
           | 'new' ID '(' ')'
           | '!' exp
           | '(' exp ')'
           ;
   expList : exp (expRest)*
           | ;
   expRest : ',' exp;

ID : [a-zA-Z_][a-zA-Z0-9_]*;
OP : '+' | '-' | '*' | '/' | '<' | '>' | '&&' | '||';
INTEGER_LITERAL : [0-9]+;
WS : [ \t\r\n]+ -> skip;
COMMENT : '/*' .*? '*/' -> skip;
LINE_COMMENT : '//' ~[\r\n]* -> skip;