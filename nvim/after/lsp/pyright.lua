-- I initially returned that thing directly lol, like the neighboring after/lsp/hls.lua
-- I admit the improved code as below (checking first whether venv actually exists) is LLM-generated

local venv_python = vim.fn.getcwd() .. "/.venv/bin/python"

-- Only override pythonPath if the local .venv binary actually exists
if vim.fn.executable(venv_python) == 1 then
    return {
        settings = {
            python = {
                pythonPath = venv_python,
            },
        },
    }
end

-- Fall back to default config (system Python) if no .venv exists
return {}
