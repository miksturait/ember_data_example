App.ContactsRoute = Em.Route.extend
  model: ->
    # request all contacts from adapter
    App.Contact.find()

    # filter contacts to exclude new ones
   	App.Contact.filter (contact) -> not contact.get('isNew')