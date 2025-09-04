if has('nvim')
  lua <<LUA
    require("codecompanion").setup({
      strategies = {
        chat = {
          adapter = "claude_code",
        },
        inline = {
          adapter = "copilot",
        },
        cmd = {
          adapter = "copilot",
        }
      },
      adapters = {
        acp = {
          claude_code = function()
            return require("codecompanion.adapters").extend("claude_code", {
              env = {
                CLAUDE_CODE_OAUTH_TOKEN = 'cmd:op read "op://Diligence LM/CLAUDE_CODE_OAUTH_TOKEN/credential" --no-newline',
              },
            })
          end,
        },
      },
    })
LUA
end
