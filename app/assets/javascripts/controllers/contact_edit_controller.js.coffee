alias = Em.computed.alias

App.ContactEditController = Em.ObjectController.extend
  needs: 'contact'.w()
  contactContr: alias 'controllers.contact'

  actions:
    stopEditing: ->
      @get('model').rollback()

    save: ->
      @get('model').save().then =>
        @get('contactContr').send 'stopEditing'

    addPhoneNumber: ->
      @get('model.phoneNumbers').createRecord()

    removePhoneNumber: (phoneNumber) ->
      phoneNumber.deleteRecord()
