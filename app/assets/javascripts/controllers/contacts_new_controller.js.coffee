App.ContactsNewController = Em.ObjectController.extend
  actions:
    save: ->
      @get('model').save().then (contact) =>
        @transitionTo 'contact', contact

    cancel: ->
      @stopEditing()
      @transitionToRoute 'contacts.index'

    addPhoneNumber: ->
      @get('model.phoneNumbers').createRecord()

    removePhoneNumber: (phoneNumber) ->
      phoneNumber.deleteRecord()

  stopEditing: ->
    # rollback the local transaction if it hasn't already been cleared
    if @transaction?
      @transaction.rollback()
      @transaction = null
