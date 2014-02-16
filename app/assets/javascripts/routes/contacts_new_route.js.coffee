App.ContactsNewRoute = Em.Route.extend
  model: ->
    # Because we are maintaining a transaction locally in the controller for editing,
    # the new record needs to be created in the controller.
    null

  setupController: (controller) ->
    # todo is apply required? 
    @_super.apply @, arguments
    controller.startEditing()

  deactivate: ->
    @controllerFor('contacts.new').stopEditing()