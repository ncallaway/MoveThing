fs = require 'fs'

{spawn} = require 'child_process'

build = (callback) ->
    # coffee -w -j lib/movething.js -c src
    coffee = spawn 'coffee', ['-j', 'lib/movething.js', '-c', 'src']
    coffee.stderr.on 'data', (data) ->
        process.stderr.write data.toString()
    coffee.stdout.on 'data', (data) ->
        console.log data.toString()
    coffee.on 'exit', (code) ->
        callback?() if code is 0

watch = (callback) ->
    # coffee -w -j lib/movething.js -c src
    coffee = spawn 'coffee', ['-w', '-j', 'lib/movething.js', '-c', 'src']
    coffee.stderr.on 'data', (data) ->
        process.stderr.write data.toString()
    coffee.stdout.on 'data', (data) ->
        console.log data.toString()
    coffee.on 'exit', (code) ->
        callback?() if code is 0

task 'build', 'build lib/movething.js from coffee files in the src tree', ->
    build()

task 'watch', 'build & watch lib/movething.js from coffee files in the src tree', ->
    watch()