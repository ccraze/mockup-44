do () ->

  ###
  # We should probably refactor this to use jquery. When I wrote this
  # I didn't realize, or I guess forgot, that we were already loading
  # jquery in our pages.
  ###

  enableTopNavAnimation = ->
    tn = document.querySelector('.top-nav')
    nt = document.querySelector('.nav-text')
    ni = document.querySelector('.nav-image')
    tl = document.querySelector('#topside_logo > a')

    showImage = ->
      ni.style.height = '98px'
      tl.style.top = '-88px'

    hideImage = ->
      ni.style.height = '0'
      tl.style.top = '0'

    ###
    # make sure the bottom of our rising tabs-image rests on top
    # of the tabs-text.
    # we probably have to recalculate this when the window resizes
    # or the zoom level changes (does zoom change trigger window resize?)
    ###
    ntHeight =
      parseFloat(window.getComputedStyle(nt).getPropertyValue('height')) +
      parseFloat(window.getComputedStyle(nt).getPropertyValue('border-top-width')) +
      parseFloat(window.getComputedStyle(nt).getPropertyValue('padding-top')) +
      parseFloat(window.getComputedStyle(nt).getPropertyValue('padding-bottom')) +
      parseFloat(window.getComputedStyle(nt).getPropertyValue('border-bottom-width'))

    #console.log('calculated height of nav-text:', ntHeight);
    ni.style.bottom = ntHeight + 'px'

    tn.addEventListener('mouseover', showImage, false)
    tn.addEventListener('mouseout', hideImage, false)

  document.addEventListener('DOMContentLoaded', enableTopNavAnimation, false)
  return
