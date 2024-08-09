
local function config()
    require("auto-session").setup {
      log_level = "error",
      auto_session_suppress_dirs = { "/", "~/", "~/programming", },

      session_lens = {
    -- If load_on_setup is set to false, one needs to eventually call `require("auto-session").setup_session_lens()` if they want to use session-lens.
    buftypes_to_ignore = {}, -- list of buffer types what should not be deleted from current session
    load_on_setup = true,
    theme_conf = { border = true },
    previewer = false,
  },

    }

end

local function opts()
    return {
        auto_session_enable_last_session = false,
    }
end

return {
    "rmagatti/auto-session",
    -- event = "",
    -- dependencies = {},
    config = config,
    opts = opts
}
