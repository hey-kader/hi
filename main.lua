function love.load()
	note = require ("note")
	note = note:new()
	notes = {}
	for i=1, 3 do
		local n = require ("note") 
		n.box.y = n.box.y + (i*20)
		table.insert(notes, n)
	end
end

function love.update(dt)
	for i, note in ipairs(notes) do
		note.box:update()
		if note.box.toggle == false then
			note.box.color = {1, 0, 1, 1}
		else
			note.box.color = {1, 0, 0, 1}
		end
		if note.box.active == true then
			if note.box.toggle == true then
				note.box.color = {0, 1, 0, 1}
			else
				note.box.color = {1, 1, 0, 1}
			end
		end
		print (note)	
	end
end
print ()

function love.draw()
	for i, note in ipairs(notes) do
		note.box:draw()
	end
end
