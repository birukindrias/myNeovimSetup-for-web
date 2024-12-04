-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/root/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?.lua;/root/.cache/nvim/packer_hererocks/2.1.1713484068/share/lua/5.1/?/init.lua;/root/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?.lua;/root/.cache/nvim/packer_hererocks/2.1.1713484068/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/root/.cache/nvim/packer_hererocks/2.1.1713484068/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n8\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\17vsnip#expand\afn\bvim˜\4\1\0\t\0\30\0/6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\a\0005\4\5\0004\5\3\0009\6\3\0009\6\4\6>\6\1\5=\5\6\4=\4\b\0035\4\n\0003\5\t\0=\5\v\4=\4\f\0035\4\19\0009\5\r\0009\5\14\0055\a\17\0009\b\15\0009\b\16\b=\b\18\aB\5\2\2=\5\20\0049\5\r\0009\5\21\0055\a\22\0009\b\15\0009\b\16\b=\b\18\aB\5\2\2=\5\23\0049\5\r\0009\5\24\0055\a\25\0B\5\2\2=\5\26\4=\4\r\0034\4\3\0005\5\27\0>\5\1\0045\5\28\0>\5\2\4=\4\29\3B\1\2\1K\0\1\0\fsources\1\0\1\tname\tpath\1\0\1\tname\vbuffer\t<CR>\1\0\1\vselect\2\fconfirm\f<S-Tab>\1\0\1\rbehavior\0\21select_prev_item\n<Tab>\1\0\3\f<S-Tab>\0\n<Tab>\0\t<CR>\0\rbehavior\1\0\1\rbehavior\0\vInsert\19SelectBehavior\21select_next_item\fmapping\fsnippet\vexpand\1\0\1\vexpand\0\0\15completion\1\0\4\15completion\0\fsources\0\fmapping\0\fsnippet\0\17autocomplete\1\0\1\17autocomplete\0\fdisable\vconfig\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nf\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\tview\1\0\1\tview\0\1\0\2\tside\tleft\nwidth\3\30\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/root/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n8\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\17vsnip#expand\afn\bvim˜\4\1\0\t\0\30\0/6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\a\0005\4\5\0004\5\3\0009\6\3\0009\6\4\6>\6\1\5=\5\6\4=\4\b\0035\4\n\0003\5\t\0=\5\v\4=\4\f\0035\4\19\0009\5\r\0009\5\14\0055\a\17\0009\b\15\0009\b\16\b=\b\18\aB\5\2\2=\5\20\0049\5\r\0009\5\21\0055\a\22\0009\b\15\0009\b\16\b=\b\18\aB\5\2\2=\5\23\0049\5\r\0009\5\24\0055\a\25\0B\5\2\2=\5\26\4=\4\r\0034\4\3\0005\5\27\0>\5\1\0045\5\28\0>\5\2\4=\4\29\3B\1\2\1K\0\1\0\fsources\1\0\1\tname\tpath\1\0\1\tname\vbuffer\t<CR>\1\0\1\vselect\2\fconfirm\f<S-Tab>\1\0\1\rbehavior\0\21select_prev_item\n<Tab>\1\0\3\f<S-Tab>\0\n<Tab>\0\t<CR>\0\rbehavior\1\0\1\rbehavior\0\vInsert\19SelectBehavior\21select_next_item\fmapping\fsnippet\vexpand\1\0\1\vexpand\0\0\15completion\1\0\4\15completion\0\fsources\0\fmapping\0\fsnippet\0\17autocomplete\1\0\1\17autocomplete\0\fdisable\vconfig\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nf\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\tview\1\0\1\tview\0\1\0\2\tside\tleft\nwidth\3\30\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
