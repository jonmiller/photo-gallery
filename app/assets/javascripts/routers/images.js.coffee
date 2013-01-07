class ImagesRails.Routers.Images extends Backbone.Router
  routes:
    '': 'index'
    'new': 'new'
    'images/:id': 'show'

  initialize: ->
    @collection = new ImagesRails.Collections.Images
    @collection.reset($('#content-pane').data 'images')

    view = new ImagesRails.Views.Tabs()
    $('#navigation-pane').html(view.render().el)

  index: ->
    view = new ImagesRails.Views.ImagesIndex(collection: @collection)
    $('#content-pane').html(view.render().el)

  new: ->
    view = new ImagesRails.Views.NewImages(collection: @collection)
    $('#content-pane').html(view.render().el)

  show: (id) ->
    alert "Image #{id}"
    
