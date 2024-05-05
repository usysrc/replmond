# REPL Mond

Ideas on how to create luajit REPL app. Apps that live in the REPL itself!

## TODO Repl App

Start luajit:

```
luajit todo.lua
```

Then require the `todo` file and start using it line by line:

```lua
todo "Buy milk"
display
```

The repl automagically adds parens for singled commands as a shorthand execution of functions.
