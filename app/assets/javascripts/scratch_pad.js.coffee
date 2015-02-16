window.ScratchPad =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    @AllNotes = [
      { id: 1, title: "This is a note", content: "This is the content" },
      { id: 2, title: "This is another note", content: "Words" },
      { id: 3, title: "This was generated in the db/seeds.rb file", content: "That's kind of cool" }
    ]

    new @Routers.ScratchPadRouter
    Backbone.history.start(pushState: true)

window.App = window.ScratchPad

$(document).ready ->
  ScratchPad.initialize()
