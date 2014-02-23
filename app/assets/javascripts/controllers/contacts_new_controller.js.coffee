App.ContactsNewController = Em.ObjectController.extend
  actions:
    save: ->
      @get('model').save().then (contact) =>
        @transitionTo 'contact', contact

    cancel: ->
      @transitionToRoute 'contacts.index'

    addPhoneNumber: ->
      @get('model.phoneNumbers').createRecord()

    removePhoneNumber: (phoneNumber) ->
      phoneNumber.deleteRecord()
