
require "objects.entities.npc.NPC"

export class NPCMerchant extends NPC
	new: (@pos = {x: 0, y: 0}) =>
		super(@pos)
		@sprite = sprites.npc.merchant

	init: =>
-- 		@item_list = loadfile(@item_list) -- return table of sellable items inside item_list .lua file
-- 		@item_list = @item_list()
		print(@item_list)
-- 		@item_list = dofile(@item_list)
		@item_list = lf.load(@item_list)()
		@state = NPCShopState(@)
