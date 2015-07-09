$(function() {
  $('.category-siblings').each(function() {
    var html;
    html = $(this).html();
    console.log('original html:', html);
    $(this).html($lib.preventWidow(html));
    html = $(this).html();
    console.log('modified html:', html);
  });
});

//# sourceMappingURL=category-siblings.js.map
