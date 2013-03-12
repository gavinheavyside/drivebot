# Rodent Motivation
#
# ship it - Display a motivation squirrel
#

squirrels = [
  "http://shipitsquirrel.github.com/images/ship%20it%20squirrel.png",
  "http://shipitsquirrel.github.com/images/squirrel.png",
  "http://images.cheezburger.com/completestore/2011/11/2/aa83c0c4-2123-4bd3-8097-966c9461b30c.jpg",
  "http://images.cheezburger.com/completestore/2011/11/2/46e81db3-bead-4e2e-a157-8edd0339192f.jpg"
]

module.exports = (robot) ->
  robot.hear /ship it/i, (msg) ->
    msg.send msg.random squirrels
