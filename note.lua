note = {}
setmetatable(note, {})
function note:new(x, y)
	n = {}
	setmetatable(n, {})
	box = require ("box")
	n['box'] = box:new(x, y) 
	n.box.text = "this is a note!"
	return n
end
Note = note:new(x, y)

return Note
