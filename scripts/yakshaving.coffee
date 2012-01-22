# Bovine Shearing
#
# yak shaving - Display a source of Yak hair
#

yaks = [
  "https://github.com/hgavin/drivebot/raw/master/images/yak.jpg",
  "https://github.com/hgavin/drivebot/raw/master/images/yak2.jpg"
]

module.exports = (robot) ->
  robot.hear /yak shaving/i, (msg) ->
    msg.send msg.random yaks
