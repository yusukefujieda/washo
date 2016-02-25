(($) ->
  $ ->
    $header = $('#top-head')

    $('#nav-toggle').click -> # メニューボタンが押されたら
      $header.toggleClass 'open' # openクラスをつける
      return
    return
  return
) jQuery