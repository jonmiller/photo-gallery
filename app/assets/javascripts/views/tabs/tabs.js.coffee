class PhotoGallery.Views.Tabs extends Backbone.View

    template: JST['tabs/tabs']

    className: 'navbar navbar-fixed-top'

    events: 'click a': 'navigateTab'

    render: ->
      $(@el).html(@template)
      return this

    navigateTab: (e) ->
      e.preventDefault()
      PhotoGallery.Routers.Images.navigate(e.target.dataset.url, true)

