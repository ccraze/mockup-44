$(->
  $searchToggle = $('.search-toggle')
  $searchHide   = $('.search-button-hide > a')
  $searchDialog = $('.category-header-search')
  $headerBasicSearch = $('.category-header-line1 .basic-search')
  $dialogBasicSearch = $('.category-search .basic-search')

  hideSearchDialog = (event) ->
    event?.preventDefault()

    $searchDialog.hide('fast');
    $searchDialog.data('state', 'hide')
    $headerBasicSearch.css('border-color': '#bef67e')
    $searchToggle.css('border-color': '#bef67e')

    return

  showSearchDialog = (event) ->
    event?.preventDefault()

    $searchDialog.show('fast');
    $searchDialog.data('state', 'show')
    $headerBasicSearch.css('border-color': '#6a9a2a')
    $searchToggle.css('border-color': '#6a9a2a')

    $dialogBasicSearch.find('input[type="text"]').focus()

    return

  toggleSearchDialog = (event) ->
    event?.preventDefault()

    console.log('toggle search dialog. this: ', this)

    if ($searchDialog.data('state') == 'show')
      hideSearchDialog(event)
      $(this).find('a').blur()
    else
      showSearchDialog(event)

    return

  $searchToggle.click(toggleSearchDialog)
  $searchHide.click(hideSearchDialog)
  $headerBasicSearch.click(showSearchDialog)


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
