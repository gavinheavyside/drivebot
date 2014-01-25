# Description:
#   Integrates with memegenerator.net
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot <text> ALL the <things> - Generates ALL THE THINGS
#   hubot (Oh|You) <text> (Please|Tell) <text> - Condescending Wonka
#   hubot Ermahgerd <text> - Ermahgerd
#   hubot Not sure if <text> or <text> - Futurama Fry
#   hubot I don't always <something> but when i do <text> - The Most Interesting man in the World
#   hubot one does not simply <text> - Lord of the Rings Boromir
#   hubot <text> ORLY? - ORLY? owl with the top caption of <text>
#   hubot <text> (SUCCESS|NAILED IT) - success kid with the top caption of <text>
#   hubot Yo dawg <text> so <text> - Yo Dawg
#   hubot Y U NO <text>  - Y U NO GUY with the bottom caption of <text>
# Author:
#   gavinheavyside


inspect = require('util').inspect

module.exports = (robot) ->
  unless robot.brain.data.memes?
    robot.brain.data.memes = [
      {
        regex: /(.*) (ALL THE .*)/i,
        image: 'allthethings'
      },
      {
        regex: /((Oh|You) .*) ((Please|Tell) .*)/i,
        image: 'condescendingwonka'
      },
      {
        regex: /(Ermahgerd) (.*)/i,
        image: 'ermahgerd'
      },
      {
        regex: /(NOT SURE IF .*) (OR .*)/i,
        image: 'futuramafry'
      },
      {
        regex: /(I DON'?T ALWAYS .*) (BUT WHEN I DO,? .*)/i,
        image: 'mostinterestingman'
      },
      {
        regex: /(one does not simply) (.*)/i,
        image: 'onedoesnotsimply'
      },
      {
        regex: /(.*) (O\s?RLY\??.*)/i,
        image: 'orly'
      },
      {
        regex: /(.*) (SUCCESS|NAILED IT.*)/i,
        image: 'successkid'
      },
      {
        regex: /(YO DAWG .*) (SO .*)/i,
        image: 'xzibit'
      },
      {
        regex: /(Y U NO) (.+)/i,
        image: 'yunoguy'
      }
    ]

  for meme in robot.brain.data.memes
    memeResponder robot, meme


memeResponder = (robot, meme) ->
  robot.respond meme.regex, (msg) ->
    memeGenerator msg, meme.image, msg.match[1], msg.match[2], (url) ->
      msg.send url

memeGenerator = (msg, image, text0, text1, callback) ->
  top = text0.replace /\ /g, '_'
  bottom = text1.replace /\ /g, '_'
  callback "http://mydrive-memes.herokuapp.com/#{top}/#{bottom}/#{image}.jpg"

