linterPath = atom.packages.getLoadedPackage("linter").path
Linter = require "#{linterPath}/lib/linter"

class LinterGolint extends Linter
  # The syntax that the linter handles. May be a string or
  # list/tuple of strings. Names should be all lowercase.
  @syntax: 'source.go'

  # A string, list, tuple or callable that returns a string, list or tuple,
  # containing the command line (with arguments) used to lint.
  cmd: 'golint'

  linterName: 'golint'

  # A regex pattern used to extract information from the executable's output.
  regex:
    '.+?:(?<line>\\d+):(?<col>\\d+): (?<message>.+)'

  constructor: (editor)->
    super(editor)
    atom.config.observe 'linter-golint.golintExecutablePath', =>
      @executablePath = atom.config.get 'linter-golint.golintExecutablePath'

  destroy: ->
    atom.config.unobserve 'linter-golint.golintExecutablePath'

module.exports = LinterGolint
