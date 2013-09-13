class Loop

    callback: undefined

    start: =>
        @requestFrame()

    requestFrame: =>
        # Feature detect this!
        #console.log "requesting a frame"
        requestAnimationFrame(@step)

    step: =>
        #console.log "got a frame"
        @callback() if typeof(@callback) is "function"
        @requestFrame()
