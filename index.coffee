module.exports = (robot) ->
  robot.respond /hello/i, (msg) ->
    msg.send "hello!"

    robot.hear /test/i, (msg) ->
    msg.send "test!"
