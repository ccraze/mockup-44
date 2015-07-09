$(->
  $('.category-siblings').each(->
    html = $(this).html()
    console.log('original html:', html)
    $(this).html($lib.preventWidow(html))

    html = $(this).html()
    console.log('modified html:', html)
    return
  )
  return
)
