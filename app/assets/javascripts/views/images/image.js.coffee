class ImagesRails.Views.Image extends Backbone.View

  template: JST['images/image']

  tagName: 'li'

  render: ->
    $(@el).html(@template(image: @model))
    return this
