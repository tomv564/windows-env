function autojump_add_to_database()
  os.execute("autojump --add " .. "\"" .. clink.get_cwd() .. "\"" .. " 2> " .. clink.get_env("TEMP") .. "\\autojump_error.txt")
end

clink.prompt.register_filter(autojump_add_to_database, 99)

function autojump_completion(word)
  for line in io.popen("autojump --complete " .. word):lines() do
    clink.add_match(line)
  end
  return {}
end

local autojump_parser = clink.arg.new_parser()
autojump_parser:set_arguments({ autojump_completion })

clink.arg.register_parser("j", autojump_parser)
