# Development

To get started with lua scripting, you'll need a suitable text editor. We suggest [VS Code](https://code.visualstudio.com/) or [Sublime Text](https://www.sublimetext.com/), but in theory [Notepad++](https://notepad-plus-plus.org/download/) or even the built-in Microsoft Notepad will probably work just fine. After choosing an editor, head over to

If you're unfamiliar with the Lua programming language, [Lua in 5 minutes](https://learnxinyminutes.com/docs/lua/) is a great guide to get started.

## Things to keep in mind:

- By default, all loaded lua scripts share the same environment. This means that if 2 scripts use a global variable with the same name, they will conflict with each other and cause all kinds of issues. To prevent this, always remember to make your variables, functions, etc **local**
