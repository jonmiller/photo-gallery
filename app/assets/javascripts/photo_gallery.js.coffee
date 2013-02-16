window.PhotoGallery =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    this.Routers.Images = new PhotoGallery.Routers.Images
    Backbone.history.start()

$(document).ready ->
  PhotoGallery.init()

