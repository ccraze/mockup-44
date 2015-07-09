(function() {
  var $lib, exports, preventWidow;
  exports = this;

  /*
   * TODO - this doesn't work unless its paragraph text without
   *        and tags around the last space(s). It also doesn't
   *        work if there's more than one space before the last word.
   * TODO - implement minWords.
   * TODO - allow html string or element object as first argument.
   * TODO - allow the first argument to be an array/collection of
   *        strings or objects.
   */
  preventWidow = function(html, minWords) {
    return html.replace(/ ([^ ]*)$/, '&nbsp;$1');
  };

  /*
   * Create and export our $lib object
   */
  $lib = (function() {});
  exports.$lib = $lib;
  return $lib;

  /*
   * This is the original function that I'm using as a base for
   * preventWidow. Stolen from
   * http://www.webdevdoor.com/jquery/preventing-widows-websites-jquery/
   * But I think this function needs a little help to allow specifying
   * minumum number of words on the last line and allowing operation on
   * either strings or elements.
   *
  $('p').each(function(){
      var string = $(this).html();
      string = string.replace(/ ([^ ]*)$/,'&nbsp;$1');
      $(this).html(string);
  });
   */
}).call(this);

//# sourceMappingURL=$lib.js.map
