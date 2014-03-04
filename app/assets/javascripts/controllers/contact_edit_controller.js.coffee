alias = Em.computed.alias

App.ContactEditController = Em.ObjectController.extend
  needs: 'contact'.w()
  contactContr: alias 'controllers.contact'

  actions:
    stopEditing: ->
      @get('model').rollback()

    save: ->
      @get('model').save().then =>
        @transitionToRoute 'contact'

    addPhoneNumber: ->
      @get('model.phoneNumbers').createRecord()

    removePhoneNumber: (phoneNumber) ->
      phoneNumber.deleteRecord()
