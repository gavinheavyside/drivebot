# Description:
#   achievement badge
#
# Dependencies:
#   None
#
# Commands:
#   drivebot achievement unlocked <text> - achievement badge.
#
# Author:
#   gavinheavyside

module.exports = (robot) ->
  robot.hear /achievement (get|unlock(ed)?) (.+?)(\s*[^@\s]+@[^@\s]+)?\s*$/i, (msg) ->
    caption = msg.match[3]
    email = msg.match[4] || msg.message.user.email_address
    url = "http://achievement-unlocked.heroku.com/xbox/#{escape(caption)}.png"
    if email
      url += "?email=#{escape(email.trim())}.png"
    msg.send(url)

  robot.hear /acheivement (get|unlock(ed)?)/i, (msg) ->
    url = "http://achievement-unlocked.heroku.com/xbox/#{escape("Bane of Daniel Webster")}.png"
    msg.send(url)
