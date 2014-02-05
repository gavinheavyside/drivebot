# Description
#   Chuck
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   chuck norris me - display Chuck approval
#
# Notes:
#   None
#
# Author:
#   gavinheavyside
#


module.exports = (robot) ->
  robot.respond /chuck norris me/i, (msg) ->
    msg.send "https://github.com/gavinheavyside/drivebot/raw/master/images/chucknorris.jpg"
