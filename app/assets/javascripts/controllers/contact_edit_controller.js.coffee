App.ContactEditController = Em.ObjectController.extend
  needs: 'contact'.w()

  # todo move to actions object
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
