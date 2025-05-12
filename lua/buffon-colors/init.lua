local defaults = require("buffon-colors.defaults")

local M = {}

---@type BuffonMainController
local ctrl
local config = {}

---@param event_data vim.api.keyset.create_autocmd.callback_args
local function update_winbar(event_data)
	vim.schedule(function ()
		local buf_idx
		for key, value in ipairs(ctrl.page_controller:get_active_page().bufferslist.buffers) do
			if value.id == event_data.buf then
				buf_idx = key
				break
			end
		end

		if buf_idx ~= nil then
			vim.wo.winbar = "%#BuffonBufferColor" .. buf_idx .. "# "
		end
	end)
end

local function register_colors()
	local fallback = vim.api.nvim_get_hl(0, { name = config.colors.fallback }).bg
	for idx = 1, # ctrl.config.mapping_chars do
		local char = ctrl.config.mapping_chars:sub(idx, idx)
		local color = config.colors[char] or fallback

		vim.api.nvim_set_hl(0, 'BuffonBufferColor' .. idx, { bg = color })
	end
end

---@type BuffonPluginFunc
local function register_extension(mainctrl)
	ctrl = mainctrl
	register_colors()

	vim.api.nvim_create_autocmd("BufEnter", {
		callback = function (event_data)
			update_winbar(event_data)
		end
	})
end

function M.setup(opts)
	config = vim.tbl_extend("force", defaults, opts)

	require("buffon").add(register_extension)
end

return M
