if CANVAS_DATA == undefined
  CANVAS_DATA = ""

oekaki = ->

  $(".new_house, .edit_house").on("submit", (e) ->
    canvas = document.getElementById("simple_sketch")
    canvas_data = canvas.toDataURL()

    $("#house_image").val("") # 画像データを二重に送信するのを防ぐ
    $("#house_remote_image_url").val(canvas_data)
  )

  set_oekaki = ()->
    canvas = document.getElementById("simple_sketch")

    if (canvas)
      img = new Image()
      img.src = OEKAKI_URL
      img.onload = ()->
        console.log img
        ctx = canvas.getContext('2d')
        ctx.drawImage(img, 0, 0)

  setTimeout(()->
    # sketchが実行されてしまうと、canvasが初期化されてしまうので時間差をつける。ほんとはコールバック実装が良い。
    set_oekaki()
  , 1000)

$(document).ready(oekaki)
$(document).on('page:load', oekaki)
