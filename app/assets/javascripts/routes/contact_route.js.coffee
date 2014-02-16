App.ContactRoute = Em.Route.extend
  setupController: (controller, model) ->
    # todo is apply required? 
    @_super.apply this, arguments

    # reset editing state
    # note: this is necessary here because `deactivate` won't be called when transitioning
    # from one ContactRoute directly into another
    controller.stopEditing() if controller.get('isEditing')
    
    # highlight this contact as active
    @controllerFor('contacts').set 'activeContactId', model.get('id')

  deactivate: ->
    console.log 'deactivate contact route'
    controller = @controllerFor 'contact'

    # reset editing state
    controller.stopEditing() if controller.get('isEditing')

    # un-highlight the active contact (perhaps temporarily)
    @controllerFor('contacts').set 'activeContactId', null
