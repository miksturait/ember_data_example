App.ContactsRoute = Em.Route.extend
  model: ->
    @store.find('contact').then (contacts) -> contacts.rejectBy 'isNew'