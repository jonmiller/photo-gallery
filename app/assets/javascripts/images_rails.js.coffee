window.ImagesRails =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new ImagesRails.Routers.Images
    Backbone.history.start()

$(document).ready ->
  ImagesRails.init()
