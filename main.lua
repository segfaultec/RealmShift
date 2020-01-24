Input = require("lib/Input")
Push = require("lib/push")
Bump = require("lib/bump")
STI = require("lib/sti")
Soda = require("lib/sodapop")
require("constants")
require("utils")
require("graphics")
require("font")
require("image")
require("input")
require("game")
require("dialog")
requireFolder("states")
requireFolder("objects")
requireFolder("rooms")
love.load = function()
  setupGraphics()
  setupFonts()
  setupWindow()
  loadSprites()
  input = setupInput()
  game = Game()
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