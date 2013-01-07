window.ImagesRails =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    this.Routers.Images = new ImagesRails.Routers.Images
    Backbone.history.start()

$(document).ready ->
  ImagesRails.init()

