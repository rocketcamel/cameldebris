local cameldebris = {}
local Promise = require(script.Parent.promise)

function cameldebris.AddItem(instance: Instance, delay: number)
	return Promise.new(function(resolve, reject, onCancel)
		task.wait(delay)
		instance:Destroy()
	end)
end

-- local meta = {}
-- meta.__index = meta

-- local Promise = require(script.Parent.promise)

-- type self = {
-- 	instance: Instance,
-- 	delayThread: thread,
-- }

-- export type cameldebris = typeof(setmetatable({} :: self, meta))

-- function cameldebris.new(instance: Instance, delay: number): cameldebris
-- 	local self = {} :: self
-- 	self.instance = instance
-- 	return setmetatable(self, meta)
-- end

-- function meta.Cancel(self: cameldebris)
-- 	task.cancel(self.delayThread)
-- end

return cameldebris
