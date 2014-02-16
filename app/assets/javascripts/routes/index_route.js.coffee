App.IndexRoute = Em.Route.extend
  redirect: ->
    @transitionTo 'contacts'