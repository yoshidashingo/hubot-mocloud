module.exports = (robot) ->

  robot.respond /hello/i, (msg) ->
    msg.send "hello!"
    msg.send "@#{msg.message.user.name}, foo bar."
    # reply使うとメッセージを送ったユーザーにリプライできるっぽい
    msg.reply 'foooo'

  robot.hear /test/i, (msg) ->
    msg.send "test!"

  robot.hear /tired/i, (msg) ->
    msg.send "元気出して！"
