module.exports = (robot) ->

  robot.respond /hello/i, (msg) ->
    msg.send "hello!"
    msg.send "@#{msg.message.user.name}, foo bar."
    # reply使うとメッセージを送ったユーザーにリプライできるっぽい

  robot.hear /test/i, (msg) ->
    msg.send "test!"

  robot.hear /tired/i, (msg) ->
    msg.send "元気出して！"

  robot.hear /badger/i, (res) ->
    res.send "Badgers? BADGERS? WE DON'T NEED NO STINKIN BADGERS"

  robot.respond /open the pod bay doors/i, (res) ->
    res.reply "I'm afraid I can't let you do that."

  robot.hear /I like pie/i, (res) ->
    res.emote "makes a freshly baked pie"
