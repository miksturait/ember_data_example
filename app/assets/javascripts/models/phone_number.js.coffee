App.PhoneNumber = DS.Model.extend
  number:  DS.attr 'string'
  contact: DS.belongsTo 'contact'

App.PhoneNumber.FIXTURES = [
  id: 1
  contact: 1
  number: '123-456-789'
,
  id: 2
  contact: 2
  number: '123-456-987'
,
  id: 3
  contact: 3
  number: '123-654-789'
]