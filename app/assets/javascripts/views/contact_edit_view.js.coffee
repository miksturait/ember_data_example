App.ContactEditView = Em.View.extend
  templateName:     'shared/contact_edit'
  title:            null
  submitButtonLabel: null

  didInsertElement: ->
    # consider using focusable mixin to show the power of mixins
    @$('input:first').focus()
