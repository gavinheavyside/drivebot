# Description
#   Borat
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   borat me - display Borat thumbs up
#
# Notes:
#   None
#
# Author:
#   gavinheavyside
#


module.exports = (robot) ->
  robot.respond /borat me/i, (msg) ->
    msg.send "https://github.com/gavinheavyside/drivebot/raw/master/images/borat.jpg"
