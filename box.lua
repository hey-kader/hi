box = {}

--> x (horizontal offset)
--> y (vertical offset)
--> w (width)
--> h (height)

--> active (set to false, changes on hover)
--> toggle (set to fale,  changes on click)

--> text (text to display within the box)
--> color (color of the box)


function box:new(x, y, w, h, text, color)

  if x then
		box['x'] = x
  else
    box['x'] = 0
	end 

	if y then
		box['y'] = y
	else
		box['y'] = 0
	end

	if w then
		box['w'] = w
	else
		box['w'] = love.graphics.getWidth()
	end

	if h then
		box['h'] = h
	else
		box['h'] = 17
	end

	if text then
		box['text'] = text
	else
		box['text'] = 'kader'
	end

	if color then
		box['color'] = color
	else
		box['color'] = {1, 0, 0, 1}
		box['altclr'] = {0, 0, 1, 1} 
		box['clicked'] = {1, 1, 0, 1}
	end

	box['active'] = false
	box['toggle'] = false

	return box
end

Box = box:new()
function box:draw()
	love.graphics.setColor(box.color)
	love.graphics.setBackgroundColor(box.altclr)
	love.graphics.rectangle("line", box.x, box.y, box.w, box.h)
	love.graphics.print(box.text, box.x+3, box.y+3)
end

function box:update()
	local x, y = love.mouse.getPosition()
	if x > box.x and x < box.x + box.w and y > box.y and y < box.y + box.h then
		box.active = true
	if box.active == true and love.mouse.isDown(1) then
		box.toggle = true
		love.graphics.setColor(box.clicked)	
	elseif box.toggle == true then
		love.graphics.setColor(box.clicked)
		box.toggle = false
	end
	else
		box.active = false
	end

end


return box

