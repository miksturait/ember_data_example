# consider using collection view or item view?
App.ContactInListView = Em.View.extend
  templateName:       'contact_in_list'
  tagName:            'li'
  classNameBindings:  'isActive:active'

  isActive: (->
    @get('content.id') is @get('controller.activeContactId')
  ).property 'controller.activeContactId'
