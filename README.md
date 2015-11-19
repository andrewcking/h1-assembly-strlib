# String Library for H1 Assembly

| JAVA        | C                                        | 
|-------------|------------------------------------------| 
| charAt      | charat (char *, int) : int               | 
| compareTo   | strcmp (char *, char *) : int            | 
| concat      | concat (char *, char *, char *) : void   | 
| contains    | npos (char *, char *) : int              | 
| copy        | copy (char *, char *)                    | 
| endsWith    | endswith (char *, char *) : int          | 
| equals      | streq (char *, char *) : int             | 
| indexOf     | index (char *, char *) : int             | 
| isEmpty     | empty (char *) : int                     | 
| length      | strlen (char *) : int                    | 
| startsWith  | startswith (char *, char *) : int        | 
| substring   | substr (char *, int, int, char *) : void | 
| toLowerCase | tolower (char *, char *) : void          | 
| toUpperCase | toupper (char *, char *) : void          | 
| trim        | trim (char *, char *) : void             | 


charat: takes an integer, then a pointer to a word/character and returns the character at the integers numerical position within the word

strcmp: takes two pointers to words and compares them numerically until it reaches a difference. The difference in that value is passed.

concat: takes a pointer to a buffer location, then a pointer to the second word, then a pointer to the first word. Joins the first word to the second word

npos: takes a pointer to a word/char and asks if it is contained in the second pointer to a word/char. If yes then it returns a 1 if no it returns a 0

copy: takes a buffer and then a pointer to a char/string and copies the words or characters from the string to the buffer

endswith: takes a pointer to a word/char and asks if it is contained at the very end of the second pointer to a word/char. If yes then it returns a 1 if no it returns a 0

equals: takes a pointer to two strings/char and compares them, it returns 1 if they are the same and 0 if they are not

index: takes a pointer to a word/char and asks if it is contained in the second pointer to a word/char. If yes then it returns the numerical position (charat) of the first letter of the word

empty: takes a pointer to a string/char and tests if it contains anything, if yes it returns a 0 if no it returns a 1

strlen: takes a pointer to a string/char and returns the character count of the string/char

startswith: takes a pointer to a word/char and asks if it is contained at the very beginning of the second pointer to a word/char. If yes then it returns a 1 if no it returns a 0

substr: takes a buffer location then two integers which act as charats for the final char/string. The result is taking a piece out of a string and placing it into the location pointed to by the buffer (eg ‘s2,0,2,s3’ would result in s3 = cat if s2 = “catherine”).

tolower: takes a buffer location and then a string/char. Converts and places the string/char in lowercase in the buffer location.

toupper: takes a buffer location and then a string/char. Converts and places the string/char in uppercase in the buffer location.

trim: takes a buffer location and then a string/char. Removes all leading and trailing spaces and places the result in the buffer location. Will not trim spaces within words (eg ‘  3      A   2   ‘ will be shortened to ‘3      A   2’)
