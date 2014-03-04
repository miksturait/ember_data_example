App.ContactEditRoute = Em.Route.extend
  model: ->
    contact = @modelFor 'contact'
    @set 'contact', contact
    contact

  actions:
    cancel: ->
      @get('contact').rollback()
      @transitionTo 'contact'

  deactivate: ->
    @send 'cancel'
