class ImagesRails.Routers.Images extends Backbone.Router
  routes:
    '': 'index'
    'images/:id': 'show'

  initialize: ->
    @collection = new ImagesRails.Collections.Images
    @collection.fetch()

  index: ->
    view = new ImagesRails.Views.ImagesIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Image #{id}"
    
