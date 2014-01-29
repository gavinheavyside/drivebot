# Description
#   Flipping Tables
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   tableflip - Unicode me a tableflip
#
# Notes:
#   None
#
# Author:
#   gavinheavyside
#


module.exports = (robot) ->
  robot.hear /table[ ]?flip/i, (msg) ->
    msg.send "(╯°□°）╯︵ ┻━┻"
