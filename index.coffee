module.exports = (robot) ->
  robot.respond /hello/i, (msg) ->
    msg.send "hello!"

    robot.hear /test/i, (msg) ->
    msg.send "test!"

    robot.hear /tired/i, (msg) ->
    msg.send "元気出して！"
