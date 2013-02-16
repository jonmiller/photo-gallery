class PhotoGallery.Routers.Images extends Backbone.Router

  routes:
    '': 'index'
    'new': 'new'
    'images/:id': 'show'

  initialize: ->
    @collection = new PhotoGallery.Collections.Images
    @collection.reset($('#content-pane').data 'images')

    view = new PhotoGallery.Views.Tabs()
    $('#navigation-pane').html(view.render().el)

  index: ->
    view = new PhotoGallery.Views.ImagesIndex(collection: @collection)
    $('#content-pane').html(view.render().el)

  new: ->
    view = new PhotoGallery.Views.NewImages(collection: @collection)
    $('#content-pane').html(view.render().el)
    view.initFileUploader()

  show: (id) ->
    alert "Image #{id}"
    
