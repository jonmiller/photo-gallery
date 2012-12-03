class ImagesRails.Views.Image extends Backbone.View

  template: JST['images/image']

  tagName: 'li'

  events: 'click a.thumbnail': 'displayImage'

  render: ->
    $(@el).html(@template(image: @model))
    return this

  displayImage: ->
    $('#images-modal img').attr('src', @model.file.url)
    $('#images-modal').modal('toggle')
