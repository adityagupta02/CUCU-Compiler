Author: Aditya Bal Gupta

Use the commands to compile the compiler : 
				step 1 : bison -d cucu.y
				step 2 : flex cucu.l    
				step 3 : g++ cucu.tab.c lex.yy.c -lfl -o cucu


Command to compile and run cucu code file 
				step 1 : ./cucu [FILENAME.cu]
                
Additional file Lexer.txt and parser.txt will be created
