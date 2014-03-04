App.ContactsNewRoute = Em.Route.extend
  model: ->
    contact = @store.createRecord 'contact'
    @set 'contact', contact
    contact

  actions:
    destroyRecord: ->
      @get('contact').deleteRecord()
      @set 'contact', null
      @transitionTo 'contacts.index'

  deactivate: ->
    @send 'destroyRecord' if @get('contact')?
