# linter-golint

This linter plugin for Linter provides an interface to golint.

## Installation
Linter package must be installed in order to use this plugin. If Linter is not installed, please follow the instructions [here](https://github.com/AtomLinter/Linter).

### golint installation
Before using this plugin, you must ensure that [golint](https://github.com/golang/lint) is installed on your system.

### Plugin installation
```
$ apm install linter-golint
```
## Settings
You can configure linter-golint by editing ~/.atom/config.cson (choose Open Your Config in Atom menu):

#### golintExecutablePath
```
'linter-golint':
'golintExecutablePath': null # golint path.
```

Run `which golint` to find the path.
