App.ContactsNewController = Em.ObjectController.extend
  # todo move to actions scope

  stopEditing: ->
    # rollback the local transaction if it hasn't already been cleared
    if @transaction?
      @transaction.rollback()
      @transaction = null

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
