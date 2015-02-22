class App.Routers.ScratchPadRouter extends Backbone.Router
  routes:
    '': -> 'index'
    '/notes/:id': 'showNote'

   index: ->
     view = new App.Views.Notes(collection: App.AllNotes)
     $('#container').html(view.render().el)
     Backbone.history.start(pushState: true)

   showNote: (id) ->
     console.log("You requested the note with the id of #{id}")
