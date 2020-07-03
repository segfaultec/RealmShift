Input = require("lib.Input")
Timer = require("lib.Timer")
Push = require("lib.push")
Bump = require("lib.bump")
STI = require("lib.sti")
Soda = require("lib.sodapop")
require("constants")
require("utils_new")
require("utils_vector")
require("graphics")
require("font")
require("image")
require("sound")
require("input")
require("game")
setupGraphics()
setupFonts()
loadSprites()
loadSounds()
requireFolder("states")
requireFolder("objects")
requireFolder("rooms")
require("serialisation")
math.randomseed(os.time())
math.random()
love.load = function()
  setupWindow()
  input = setupInput()
  game = Game()
  return game:init()
end
love.update = function()
  dt = love.timer.getDelta()
  return game:update()
end
love.resize = function(w, h)
  return Push:resize(w, h)
end
love.draw = function()
  Push:start()
  game:draw()
  return Push:finish()
end
