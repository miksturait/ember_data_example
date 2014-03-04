App.ContactRoute = Em.Route.extend
  model: (param) ->
    @store.find 'contact', param.contact_id
