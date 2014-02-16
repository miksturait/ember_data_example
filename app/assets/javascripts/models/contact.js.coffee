attr    = DS.attr
hasMany = DS.hasMany

App.Contact  = DS.Model.extend
  firstName:    attr 'string' 
  lastName:     attr 'string' 
  email:        attr 'string' 
  notes:        attr 'string' 
  phoneNumbers: hasMany 'App.PhoneNumber' 

  fullName: (->
    firstName = @get 'firstName'
    lastName  = @get 'lastName'

    if not firstName? and not lastName?
      if Em.isNone @get('id')
        # todo move to translations
        '(New Contact)'
      else
        # displayed when removing existing names from saved record
        '(No Name)'

    firstName = '' unless firstName 
    lastName  = '' unless lastName

    "#{firstName} #{lastName}"
  ).property 'firstName', 'lastName'

  gravatar: (->
    email = @get('email') or ''
    "http://www.gravatar.com/avatar/#{MD5 email}"
  ).property 'email'
