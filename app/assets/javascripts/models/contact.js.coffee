attr    = DS.attr
hasMany = DS.hasMany

App.Contact  = DS.Model.extend
  firstName:    attr 'string' 
  lastName:     attr 'string' 
  email:        attr 'string' 
  notes:        attr 'string' 
  phoneNumbers: hasMany 'phoneNumber', async: true

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

App.Contact.FIXTURES = [
  id: 1
  firstName:    'Joe'
  lastName:     'Foo'
  email:        'joe@foo.com'
  notes:        'Joe. Just Joe.'
  phoneNumbers: '1'.w()
,
  id: 2
  firstName:    'Sue'
  lastName:     'Bar'
  email:        'sue@bar.com'
  notes:        'Nothing special to mention.'
  phoneNumbers: '2'.w()
,
  id: 3
  firstName:    'Wojtek'
  lastName:     'Ryrych'
  email:        'wojtek@ryrych.pl'
  notes:        'arghh!'
  phoneNumbers: '3'.w()
]