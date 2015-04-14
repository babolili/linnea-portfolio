(function() {
  $(function() {
    var $logo;
    $logo = $('.logo');
    if ($('.type-hero').length > 0) {
      $('.matterhorn-container').waypoint(function(direction) {
        if (direction === 'down') {
          return $logo.addClass('show');
        } else {
          return $logo.removeClass('show');
        }
      }, {
        offset: '70'
      });
    } else {
      $logo.addClass('show');
    }
    $(document).on('click', '.zoom-caption', function(e) {
      return $('body').addClass('noscroll');
    });
    return $(document).on('click', '.featherlight-close, .featherlight', function(e) {
      return $('body').removeClass('noscroll');
    });
  });

}).call(this);
