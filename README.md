# Mini Brainfuck compiler in C
To keep it as simple as possible, there are no 'while' loops (`[` and `]` symbols in Brainfuck), as that is a bit harder to implement.

This was done on a lazy Tuesday afternoon, on my 205th day of lockdown, using Flex/Lex and Bison/Yacc.

### [Check the video here](https://youtu.be/XV17vKHVIu8)

Thanks to the owner of Sublime Text for making it free and to Rousseau for playing the piano.

Only for fun purposes.

# Compile
Double click the fake makefile (`make.bat`) or run this:

```
flex b.l
bison -yd b.y
gcc lex.yy.c y.tab.c -o main
```
