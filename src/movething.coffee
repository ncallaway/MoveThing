i = 0
tick = ->
    i += 1
    i = 0 if i > 700
    canvas = document.getElementById 'game'
    context = canvas.getContext '2d'

    context.clearRect(0, 0, 800, 600)
    context.fillStyle = "rgb(200, 0, 0)"
    context.fillRect(10+i, 10, 55, 50)    

$(document).ready ->
    looper = new Loop
    looper.callback = tick
    looper.start()
