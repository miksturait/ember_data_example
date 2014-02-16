App.ContactEditView = Em.View.extend
  didInsertElement: ->
    # consider using focusable mixin to show the power of mixins
    @$('input:first').focus()
