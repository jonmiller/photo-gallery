class ImagesRails.Views.NewImages extends Backbone.View

  template: JST['images/new']

  render: ->

    $(@el).html(@template())

    $('#new-image-file').fileupload
      url: '/api/images',
      dataType: 'json',
      done: (e, data) ->
        @collection.add(data)

    return this

