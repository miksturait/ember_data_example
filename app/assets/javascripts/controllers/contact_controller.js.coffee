alias = Em.computed.alias

App.ContactController = Em.ObjectController.extend
  needs:            'contactEdit'.w()
  contactEditContr: alias 'controllers.contactEdit'
  isEditing:        false

  actions:
    startEditing: ->
      @setProperties
        'contactEditContr.model': @get 'model'
        isEditing: true

    stopEditing: ->
      @get('contactEditContr').send 'stopEditing'
      @set 'isEditing', false

    destroyRecord: ->
      # todo add translation
      if window.confirm('Are you sure you want to delete this contact?')
        @get('model').destroyRecord().then =>
          @transitionToRoute 'contacts.index'
