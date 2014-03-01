App.ContactEditController = Em.ObjectController.extend
  needs: 'contact'.w()

  actions:
    stopEditing: ->
      @get('model').rollback()

    save: ->
      @transaction.commit()
      @transaction = undefined
      # todo use Em.computed.alias
      @get('controllers.contact').stopEditing()

    cancel: ->
      @get('controllers.contact').send 'stopEditing'

    addPhoneNumber: ->
      @get('model.phoneNumbers').createRecord()

    removePhoneNumber: (phoneNumber) ->
      phoneNumber.deleteRecord()
