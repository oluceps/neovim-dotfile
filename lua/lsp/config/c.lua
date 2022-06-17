return {
  on_setup = function(server)
    server.setup({
      on_attach = function(client, bufnr)
        client.resolved_capabilities.document_formating = false
        client.resolved_capabilities.document_range_formatting = false

        local function buf_set_keymap(...)
          vim.api.nvim_buf_set_keymap(bufnr, ...)
        end
        require("keybindings").mapLSP(buf_set_keymap)
      end,
    })
  end,
}
