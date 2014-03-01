App.ContactController = Em.ObjectController.extend
  needs:      'contactEdit'.w()
  isEditing:  false

  actions:
    startEditing: ->
      # todo use Em.computed.alias to bind to contactEdit controller
      contactEditController = @get 'controllers.contactEdit'
      contactEditController.set 'model', @get('model')
      @set 'isEditing', true

    stopEditing: ->
      # todo as above
      contactEditController = @get 'controllers.contactEdit'
      contactEditController.stopEditing()
      @set 'isEditing', false

    destroyRecord: ->
      # todo add translation
      if window.confirm('Are you sure you want to delete this contact?')
        @get('model').deleteRecord()
        @get('store').commit()

        # return to the main contacts listing page
        @get('target.router').transitionTo 'contacts.index'
