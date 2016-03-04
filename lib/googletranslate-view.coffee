module.exports =
class googletranslateView
  constructor: (serializedState) ->
    # Create root element
    @element = document.createElement('div')
    @element.classList.add('googletranslate')

    # Create message element
    message = document.createElement('div')
    message.textContent = "The googletranslate package is Alive! It's ALIVE!"
    message.classList.add('message')
    @element.appendChild(message)

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  destroy: ->
    @element.remove()

  getElement: ->
    @element
