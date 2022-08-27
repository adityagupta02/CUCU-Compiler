%{
#include <stdlib.h>
#include "cucu.tab.h"
extern YYSTYPE yylval;
void yyerror(char *s);
extern FILE *yyout,*yyin;
%}

%%    

"int"           {fprintf(yyout,"VAR_TYPE : int\n");return INT;}
"char *"        {fprintf(yyout,"VAR_TYPE : char\n");return CHARP;}
"char*"         {fprintf(yyout,"VAR_TYPE : char\n");return CHARP;}
"if"            {fprintf(yyout,"IF : if\n");return IF;}
"else"          {fprintf(yyout,"ELSE : else\n");return ELSE;}
"return"        {fprintf(yyout,"RETURN : return\n");return RETURN;}
"while"         {fprintf(yyout,"WHILE : while\n");return WHILE;}
","             {fprintf(yyout,"COMMA : ,\n");return COMMA;}
"&"             {fprintf(yyout,"AND : &\n"); return AND;}
"|"             {fprintf(yyout,"OR: | \n"); return OR;}
"+"             {fprintf(yyout,"PLUS : +\n"); return PLUS;}
"-"             {fprintf(yyout,"MINUS : -\n"); return MINUS;}
"="             {fprintf(yyout,"ASSIGNGNMENT : =\n"); return ASSIGN;}
"("             {fprintf(yyout,"LEFT PARENTHESIS : ( \n"); return LPAREN;}
")"             {fprintf(yyout,"RIGHT PARENTHESIS : ) \n"); return RPAREN;}
"<"             {fprintf(yyout,"LESS : < \n"); return LST;}
">"             {fprintf(yyout,"GREATER : > \n"); return GRT;}
"*"             {fprintf(yyout,"ASTERISK : * \n"); return MULT;}
"/"             {fprintf(yyout,"DIVISON :  \n"); return DIV;}
";"             {fprintf(yyout,"SEMICOLON : ; \n"); return SEMICOL;}
"{"             {fprintf(yyout,"LEFTBRACKET : { \n"); return LCBRACE;}
"}"             {fprintf(yyout,"RIGHTBRACKET : } \n"); return RCBRACE;}
"["             {fprintf(yyout,"LEFTSQ : [\n"); return LEFTSQBR;}
"]"             {fprintf(yyout,"RIGHTSQ : ]\n"); return RIGHTSQBR;}
">="            {fprintf(yyout,"Greater than equal to : >=\n"); return GREQ;}
"<="            {fprintf(yyout,"Less than equal to : <=\n"); return LSEQ;}
"=="            {fprintf(yyout,"Equals : ==\n"); return EQ;}
"!="            {fprintf(yyout,"Not Equals : !=\n"); return NOTEQ;}
["]             {fprintf(yyout,"DOUBLEINVCOMMA : \",\n"); return DINCOMM;}
[a-zA-Z_][a-zA-Z0-9_]*   {fprintf(yyout,"ID : %s\n",yytext); return ID;}
[1-9][0-9]*              {fprintf(yyout,"NUM : %d\n",atoi(yytext)); return NUM;}
[ \t\n]+       ; 
.                        {yyerror();}

%%

int yywrap(void) {
 return 1;
}

