class ImagesRails.Views.ImagesIndex extends Backbone.View

  template: JST['images/index']

  #events: 

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendImage, this)

  render: ->

    $(@el).html(@template())
    @collection.each(@appendImage)

    $('#new-image-file').fileupload
      url: '/api/images',
      dataType: 'json',
      done: (e, data) ->
        @collection.add(data)

    return this

  appendImage: (image) ->
    view = new ImagesRails.Views.Image(model: image.toJSON())
    $('#images-grid').append(view.render().el)

