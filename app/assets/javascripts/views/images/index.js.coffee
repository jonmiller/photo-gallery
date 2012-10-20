class ImagesRails.Views.ImagesIndex extends Backbone.View

  template: JST['images/index']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(images: @collection))
    return this
