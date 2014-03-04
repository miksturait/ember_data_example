alias = Em.computed.alias

App.ContactEditController = Em.ObjectController.extend
  actions:
    save: ->
      @get('model').save().then =>
        @transitionToRoute 'contact'

    addPhoneNumber: ->
      @get('model.phoneNumbers').createRecord()

    removePhoneNumber: (phoneNumber) ->
      phoneNumber.deleteRecord()
