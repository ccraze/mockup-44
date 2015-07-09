$(->
  $searchToggle = $('.search-toggle')
  $searchHide   = $('.search-button-hide > a')
  $searchDialog = $('.category-header-search')
  $basicSearch = $('.category-header-line1 .basic-search')

  hideSearchDialog = (event) ->
    event?.preventDefault()

    $searchDialog.hide('fast');
    $searchDialog.data('state', 'hide')
    $basicSearch.css('border-color': '#bef67e')

    return

  showSearchDialog = (event) ->
    event?.preventDefault()

    $searchDialog.show('fast');
    $searchDialog.data('state', 'show')
    $basicSearch.css('border-color': '#6a9a2a')

    return

  toggleSearchDialog = (event) ->
    event?.preventDefault()

    if ($searchDialog.data('state') == 'show')
      hideSearchDialog(event)
    else
      showSearchDialog(event)

    return

  #$searchToggle.click(toggleSearchDialog)
  $searchHide.click(hideSearchDialog)
  $basicSearch.click(showSearchDialog)



  ###
  # Begin search filters' show/hide button actions
  ###

  $('.search-age').click(->
    showFilterSelect(this, 'filter_class3', 'class3_filters')
    return
  )

  $('.search-gender').click(->
    showFilterSelect(this, 'filter_class2', 'class2_filters')
    return
  )

  $('.search-size').click(->
    showFilterSelect(this, 'filter_size', 'size_filters')
    return
  )

  $('.search-price').click(->
    showFilterSelect(this, 'filter_price', 'price_filters')
    return
  )

  $('.search-discount').click(->
    showFilterSelect(this, 'filter_discount', 'discount_filters')
    return
  )

  $('.search-inventory').click(->
    showFilterSelect(this, 'filter_numstocked', 'numstocked_filters')
    return
  )

  $('.search-prodtype').click(->
    showFilterSelect(this, 'filter_class4', 'class4_filters')
    return
  )

  $('.search-manufacturer').click(->
    showFilterSelect(this, 'filter_manufacturer', 'manufacturer_filters')
    return
  )

  $('.search-newfor').click(->
    showFilterSelect(this, 'filter_new_for', 'new_for_filters')
    return
  )

  return
)
