function love.load()
	note = require ("note")
	Note = note:new()
	notes = {}
	for i=1, 3 do
		local n = Note:new() 
		n.box.y = n.box.y + (i*20)
		table.insert(notes, n)
	end
end

function love.update(dt)
	for i, n in ipairs(notes) do
		n.box:update()
		if n.box.toggle == false then
			n.box.color = {1, 0, 1, 1}
		else
			n.box.color = {1, 0, 0, 1}
		end
		if n.box.active == true then
			if n.box.toggle == true then
				n.box.color = {0, 1, 0, 1}
			else
				n.box.color = {1, 1, 0, 1}
			end
		end
	end
end

function love.draw()
	for i, note in ipairs(notes) do
		note.box:draw()
	end
end
