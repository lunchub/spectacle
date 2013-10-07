$ ->
  $section = $('div.parent')
  $panzoom = $section.find('.panzoom').panzoom()
  $panzoom.parent().on 'mousewheel.focal', ( e ) ->
    e.preventDefault()
    delta = e.delta || e.originalEvent.wheelDelta
    # zoomOut = delta ? delta < 0 : e.originalEvent.deltaY > 0
    zoomOut = (if delta then delta < 0 else e.originalEvent.deltaY > 0)
    $panzoom.panzoom('zoom', zoomOut, {
      increment: 0.05,
      focal: e
    })
    @
  @
