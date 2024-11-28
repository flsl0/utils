voidFunc = function (arg)
    print("void func")
end

splittingStrategy = vim.cmd.vsplit

require("nxwm").setup({
    --What happens when a new x-window is created
    on_win_open=function (buf,xwin)
        splittingStrategy()
        vim.api.nvim_set_current_buf(buf)
    end,
    --Configuration to pass to window
    --`conf` is global config
    on_win_get_conf=function (conf,xwin) return conf end,
    --How to handle when multiple windows in the same tabpage has the x-window-buffer open
    on_multiple_win_open=function (vwins,buf,xwin)
        for k,vwin in ipairs(vwins) do
            if k~=1 then
                local scratchbuf=vim.api.nvim_create_buf(false,true)
                vim.bo[scratchbuf].bufhidden='wipe'
                vim.api.nvim_win_set_buf(vwin,scratchbuf)
            end
        end
    end,
    --Whether to be more verbose
    verbal=false,
    --Map to unfocus a window
    unfocus_map={mods={'mod2'},key='F1'},
    --Create your own mappings
    --IMPORTANT: the x-window needs to be focused for such mappings to work
    maps={
        --{{mods={'control','mod1'},key='Delete'},function () vim.cmd'quitall!' end},
    },
    --Window-opt: auto focus x-window when entering x-window-buffer
    autofocus=false,
    --Window-opt: try-delete x-window if no vim-window shows buffer (similar to `bufhidden=wipe`)
    delhidden=true,
    --Window-opt: when click on x-window, goto that buffer (may not focus x-window)
    clickgoto=true,
})

require("oil").setup()

require'hop'.setup()

local dap = require('dap')

dap.adapters.coreclr = {
  type = 'executable',
  command = 'D:\\Files\\tools\\netcoredbg-win64\\netcoredbg\\netcoredbg.exe',
  args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
  {
    type = "coreclr",
    name = "launch - netcoredbg",
    request = "launch",
    program = function()
        return vim.fn.input('Path to dll > ', vim.fn.getcwd() .. '\\bin\\Debug\\markovjunior.dll', 'file')
    end,
  },
}

dap.adapters.codelldb = {
  type = 'server',
  host = '127.0.0.1',
  port = 13000 -- 💀 Use the port printed out or specified with `--port`
}

dap.configurations.zig = {
  {
    name = "Launch file",
    type = "codelldb",
    request = "launch",
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = 'd:/Files/dev/anssi_challenge/src/',
    args = {"D:/Files/tools/zig-windows-x86_64-0.11.0/"},
    stopOnEntry = false,
  },
}

local lspconfig = require('lspconfig')
local pylance = require('pylance')

--pylance.setup()
--lspconfig.pylance.setup({
  ---- https://github.com/microsoft/pylance-release#settings-and-customization
  --settings = {
    --python = {
      --analysis = {
        --indexing = true,
        --typeCheckingMode = 'basic',
      --}
    --}
  --}
--})

require'lspconfig'.zls.setup{}

require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391'},
          maxLineLength = 100
        } 
      } 
    } 
  } 
} 

require'lspconfig'.omnisharp.setup {
on_attach = function(client)
    client.server_capabilities.semanticTokensProvider = nil
end,
handlers = {
    ["textDocument/definition"] = require('omnisharp_extended').handler,
  },
cmd = { "/home/void/tools/omnisharp/omnisharp-bin", "--languageserver", "--hostPID", tostring(pid) },

-- Enables support for reading code style, naming convention and analyzer
-- settings from .editorconfig.
enable_editorconfig_support = true,

-- If true, MSBuild project system will only load projects for files that
-- were opened in the editor. This setting is useful for big C# codebases
-- and allows for faster initialization of code navigation features only
-- for projects that are relevant to code that is being edited. With this
-- setting enabled OmniSharp may load fewer projects and may thus display
-- incomplete reference lists for symbols.
enable_ms_build_load_projects_on_demand = false,

-- Enables support for roslyn analyzers, code fixes and rulesets.
enable_roslyn_analyzers = true,

-- Specifies whether 'using' directives should be grouped and sorted during
-- document formatting.
organize_imports_on_format = false,

-- Enables support for showing unimported types and unimported extension
-- methods in completion lists. When committed, the appropriate using
-- directive will be added at the top of the current file. This option can
-- have a negative impact on initial completion responsiveness,
-- particularly for the first few completion sessions after opening a
-- solution.
enable_import_completion = true,

-- Specifies whether to include preview versions of the .NET SDK when
-- determining which version to use for project loading.
sdk_include_prereleases = true,

-- Only run analyzers against open files when 'enableRoslynAnalyzers' is
-- true
analyze_open_documents_only = false,
}

vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        -- Disable underline, it's very annoying
        underline = false,
	signs = false,
    })

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    client.server_capabilities.semanticTokensProvider = nil
  end,
});
