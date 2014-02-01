App.ContactEditController = Em.ObjectController.extend
  needs: 'contact'.w()

  # todo move to actions object
  startEditing: ->
    # add the contact and its associated phone numbers to a local transaction
    contact = @get 'model'
    transaction = contact.get('store').transaction()
    transaction.add contact
    contact.get('phoneNumbers').forEach (phoneNumber) -> transaction.add phoneNumber
    @transaction = transaction

  stopEditing: ->
    # rollback the local transaction if it hasn't already been cleared
    transaction = this.transaction
    if transaction
      transaction.rollback()
      @transaction = undefined

  save: ->
    @transaction.commit()
    @transaction = undefined
    # todo use Em.computed.alias
    @get('controllers.contact').stopEditing()

  cancel: ->
    @get('controllers.contact').stopEditing()


  addPhoneNumber: ->
    @get('model.phoneNumbers').createRecord()

  removePhoneNumber: (phoneNumber) ->
    phoneNumber.deleteRecord()
