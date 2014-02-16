App.ContactsController = Em.ArrayController.extend
  sortProperties: 'lastName firstName'.w()
  activeContactId: null

