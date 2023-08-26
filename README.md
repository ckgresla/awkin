# awkin
Why not use AWK for that?



# Helpers + Info
* make all of the provided samples executable with `chmod +x ./SAMPLES/*`
- Files inside the sample dir with the `.sh` extension are intended to be used as executables, containing the call to awk, the program and data path 
  - files inside "SAMPLES" with the `.awk` extension are awk programs that need to be invoked with the `-f` flag. These should all include a sample invocation command as a comment in the respective file




## Notes from the Book 
- Awk is fundamentally an interpreted programming language which uses patterns to filter chunks of textual data in order to then apply interesting actions to that data. 
- Awk programs tend to only be a few lines and are a good way to convey an idea tersely 
  - It is a lot like Pseudocode, except you can’t run pseudocode! (you can run awks!)
- The language is basically a generalization of `sed` and `grep` to other structured data like numbers and arrays
  - it is a programming language created to extened the ideas behind sed and grep
- Invoking Awk at the command line, interprets the script provided in quotations (1st thing that comes after the `awk` call)
  - it is all PATTERNS and ACTIONS (given some pattern, do some action on the lines in a file that match the original pattern)
    - Patterns are typically on the left, always outside of braces
    - Actions are always inside the `{}` braces, in typical fashion they are on the right 
- Awk operates on “input”, this could be a textfile on some filesystem, but it might also be a piped input, making it something composable in the unix sense of the idea
  - There is a great breakdown of the syntactical requirements for the language throughout Section 2, if need a reference this is a great place to start (things like requirements for curly brace placement, layout of patterns or actions, etc.)
- Awk will run the program (part inside the quotes, pattern-to-action) on an input file, space separated input files (i.e `file1 file2 ...`) or it can even work on text you type in (see PG 16. of the pdf, end of page 3 of the book for details)
  - We can also save longer awk programs in files — then call them w the following flag: `awk -f programfile` —> if we save a program to a file, we can omit the quotes typically needed if we write the program as part of the Command Line
  - Although you would need to be a psycho, you COULD put your `BEGIN` or `END` statements anywhere in a program, the location doesn’t matter
- Two DTYPES in awk: 
  1. Numbers
  2. Strings of Characters
  - These are initialized as either `0` or `""` respectively (all number variables start @ zero & are stored as floats!)
  - all operations on variables will infer the dtype based on the context in which the variable is being called, with auto conversion of numbers into strings or vice-versa in order to let expressions or statements flow correctly
- Awk splits data fields based on blanks or tabs, restricting it to tabular || specifically formatted data
- `$1` is the first field (based on the parsing of the file), `$2` is the second field & `$0` refers to the entire line
  - Because `$0` references the whole line, `{ print }` & `{ print $0 }` are the same “action”
- NOT all input lines are required to have the same number of fields… (rather odd design choice)
- Operators that should be usable in the language (some might be relegated to Pattern or Action sections):
  - EQUAL TO : `==`
  - LESS THAN : `>` or `>=` 
  - AND : `%%`
  - OR : `||`
  - NOT : `!`
  - NOT EQUAL TO: `!=`
  - MATCHED BY: `~` (for strings mainly)
  - NOT MATCHED BY: `!~` (for strings mainly)
- awk does not require User-defined variables to be declared (like in Javascript), more like python! (variable = some value)
  - number variables start @ zero (no need to initialize the variable as `something = 0`)
- Awk sort of implicitly does things that you would want to do in another language (say like keeping a track of the number of lines as a built-in variable) —> making it a nice tool out of the box, less of a need to track general things
- You can change the way “fields” are defined inside of an awk program by specifying an alternate field inside of a `BEGIN`  action — the field separator is a built in variable known as `FS`, which we can reassign at runtime (defaults to `\t` or ` ` chars)
- see Table 2-4, ~pg. 46 (in pdf) for a summary of the valid patterns in the lang (things that we can match lines based on)
- see Table 2-5, ~pg.48 (pdf) for the full list of built-in variables, all configurable 
- see Table 2-9, ~pg.69 (pdf, nice), for all of the options usable inside of a `printf` function’s `format` argument, 1st one that determines how to print subsequent args
- Awk has an “implementation limit” of 100 fields per line, so dont get crazy with creating new fields and beware reading in datafiles with many "columns”
- there are also really nice built-in functions, ranging from a reasonably featured mathematical funcs to useful string ops 
- arrays in awk are not indexed with integers, rather they are indexed via strings (sort of like a python dict!)
  - this data struct is dubbed an “associative array”, since we associate some str index with a value in the array
- To “run” an awk program without an input file, you can nest the body of the program inside of the `BEGIN` statement —> very handy to know
- Awk’s built-in random number generator is deterministically reproducible by default (uses same seed for all samplings) and is only made actually random if you call the `srand()` function before calling the random num generating `rand()` function, rather nice of them 
- Awk was started by the team behind this book in 1977
  - they liked `sed` and `grep` but did not like that they were relgated to regex and had limited “action” functionality (print line or substitute line)
  - so if you like the feel of the handle but want a bit more oomph, of course you just create a new programming language for that right? 
  - THUS was born the `pattern`—>`action` paradigm which rests behind `awk`
- The appendix is a great quick reference for all things awk, built-ins, ways of calling it, etc. —> starts on page 187 of the pdf + answers to all of the exercises for the interested reader



