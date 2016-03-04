Shell = require 'shell'

module.exports =
  activate: ->
    atom.commands.add 'atom-workspace', 'googletranslate:translate-it': => @translate()

  translate: ->
    editor = atom.workspace.getActiveTextEditor()
    buffer = editor.getBuffer()
    selections = editor.getSelections()

    buffer.transact ->
      for selection in selections
        cased = selection.getText()
        url = "https://translate.google.com/#nl/en/#{}{cased}&oq=#{cased}"
        Shell.openExternal url
