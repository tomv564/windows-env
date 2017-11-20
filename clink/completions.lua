-- local completions_dir = clink.get_env('CMDER_ROOT')..'../clink-completions/'
-- for _,lua_module in ipairs(clink.find_files(completions_dir..'*.lua')) do
--     -- Skip files that starts with _. This could be useful if some files should be ignored
--     if not string.match(lua_module, '^_.*') then
--         local filename = completions_dir..lua_module
--         -- use dofile instead of require because require caches loaded modules
--         -- so config reloading using Alt-Q won't reload updated modules.
--         dofile(filename)
--     end
-- end
local profile_dir = clink.get_env('USERPROFILE')
if profile_dir then
	cc_dir = profile_dir .. "\\clink-completions\\"
	if clink.is_dir(cc_dir) then
		dofile(cc_dir .. "git.lua")
	end
end
