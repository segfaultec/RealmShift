
export class ObjectManager
	new: =>
		@objects = {}
	
	updateObjects: =>
		for i=1, #@objects do
			o = @objects[i]
			if o.update then
				o\update!
	
	drawObjects: =>
		for i=1, #@objects do
			o = @objects[i]
			if o.draw then
				o\draw!
	
	checkDestroyed: =>
		for i=#@objects, 1, -1 do
			o = @objects[i]
			if o then
				if o.destroyed then
					table.remove(@objects, i)