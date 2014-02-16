App.ContactsNewView = Em.View.extend
  didInsertElement: ->
    # as in ContactEditView use focusable mixin
    @$('input:first').focus()
