module.exports =
  config:
    golintExecutablePath:
      type: 'string'
      default: false

  activate: ->
    console.log 'activate linter-golint'
