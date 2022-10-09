note = {}
function note:new()
	box = require ("box")
	note['box'] = box:new() 
	note.box.text = "this is a note!"
	return note
end

-- note = note:new()
return note
