# Description
#   Images
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   chuck norris me - display Chuck approval
#   borat me - display Borat thumbs up
#   /ff+uu+/ - show rage face
#   big data - show a big data
#
# Notes:
#   None
#
# Author:
#   gavinheavyside
#

datas = [
  "https://github.com/gavinheavyside/drivebot/raw/master/images/bigdata.png",
  "https://github.com/gavinheavyside/drivebot/raw/master/images/bigdata2.png",
]

module.exports = (robot) ->
  robot.respond /chuck norris me/i, (msg) ->
    msg.send "https://github.com/gavinheavyside/drivebot/raw/master/images/chucknorris.jpg"

  robot.respond /borat me/i, (msg) ->
    msg.send "https://github.com/gavinheavyside/drivebot/raw/master/images/borat.jpg"

  robot.hear /ff+uu+/i, (msg) ->
    msg.send "https://github.com/gavinheavyside/drivebot/raw/master/images/rageface.png"

  robot.hear /big data/i, (msg) ->
    msg.send msg.random datas


