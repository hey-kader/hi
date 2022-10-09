notelist = {}
note = require ("note")
notes = [[
"this",
"that"
"other"
]]
function notelist:new()
	print (notes)
	print (#notes)
	notelist['notes'] = {}
end
return notelist
