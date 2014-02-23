App.ContactsNewRoute = Em.Route.extend
  model: ->
    @store.createRecord 'contact'

  deactivate: ->
    @controllerFor('contacts.new').stopEditing()