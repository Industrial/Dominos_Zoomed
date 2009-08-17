local _G = _G

local function set_button_look_zoomed (button)
	local name = button:GetName()
	local icon = _G[name..'Icon']
	local texture = _G[name..'NormalTexture2'] or _G[name..'NormalTexture']
	_G[name..'Name']:Hide()
	_G[name..'HotKey']:Hide()

	icon:SetTexCoord(0.08,0.92,0.08,0.92)
	texture:SetTexCoord(0,0,0,0)
end

local old = Dominos.ActionButton.New
function new (self, id)
	local button = old(self, id)

	set_button_look_zoomed(button)

	return button
end
Dominos.ActionButton.New = new

