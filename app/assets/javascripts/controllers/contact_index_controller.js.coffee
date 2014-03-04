alias = Em.computed.alias

App.ContactIndexController = Em.ObjectController.extend
  actions:
    destroyRecord: ->
      # todo add translation
      if window.confirm('Are you sure you want to delete this contact?')
        @get('model').destroyRecord().then =>
          @transitionToRoute 'contacts.index'
