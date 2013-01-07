class ImagesRails.Views.ImagesIndex extends Backbone.View

  template: JST['images/index']

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendImage, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendImage)
    return this

  appendImage: (image) =>
    view = new ImagesRails.Views.Image(model: image.toJSON())
    @$('#images-grid').append(view.render().el)

