# use handlebars bound helper
Em.Handlebars.helper 'submitButton', (text) ->
  new Handlebars.SafeString "<button type='submit' class='btn btn-primary'>#{text}</button>"

Em.Handlebars.helper 'mailto', (address) ->
  new Handlebars.SafeString("<a href='mailto:#{address}'>#{address}</a>") if address?