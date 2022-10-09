function love.load()
	note = require ("note")
end

function love.update(dt)
	note.box:update()

	if note.box.active == true then
		note.box.color = {0, 1, 0, 1}
	else
		note.box.color = {1, 1, 0, 1}
	end
end

function love.draw()
  note.box:draw()
end
