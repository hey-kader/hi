function love.load()
	note = require ("box")
	love.graphics.setCanvas(note.canvas)
	notes = {}
	for i=1, 3 do
		local n = note:new(0, i*20)
		table.insert(notes, n)
	end
end

function love.update(dt)
	for i, n in ipairs(notes) do
n:update()
		if n.toggle == false then

			n.color = {1, 0, 1, 1}
		else
			n.color = {1, 0, 0, 1}
		end
		if n.active == true then
			if n.toggle == true then
				n.color = {0, 1, 0, 1}
			else
				n.color = {1, 1, 0, 1}
			end
		end
	end
end

function love.draw()
	for i, note in ipairs(notes) do
		note:draw()
	end
end
