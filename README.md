# REPL Mond

Ideas on how to create luajit REPL app. Apps that live in the REPL itself!

## TODO Repl App

Start luajit:

```
luajit
```

Then require the `todo` file and start using it line by line:

```lua
todo = require "todo"
todo "Buy milk"
todo.display()
```
