local cameldebris = {}
local Promise = require(script.Parent.promise)

function cameldebris.AddItem(instance: Instance, delay: number)
	return Promise.new(function(resolve, reject, onCancel)
		task.wait(delay)
		instance:Destroy()
		resolve()
	end)
end

return cameldebris
