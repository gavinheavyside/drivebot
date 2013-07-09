# Description
#   ffffffffffuuuuuuuuuu
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   /ff+uu+/ - show rage face
#
# Notes:
#   None
#
# Author:
#   gavinheavyside
#

module.exports = (robot) ->
  robot.hear /ff+uu+/i, (msg) ->
    msg.send "https://github.com/gavinheavyside/drivebot/raw/master/images/rageface.png"
