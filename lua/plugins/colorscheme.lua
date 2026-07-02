return {
  { "navarasu/onedark.nvim", opts = {
    transparent = false,
  } },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function()
      vim.fn["mkdp#util#install"]()
    end,
    init = function()
      vim.cmd([[
        function! OpenMarkdownPreview(url) abort
          call system('/mnt/c/Windows/System32/cmd.exe /c start "" "' .. a:url .. '"')
        endfunction
      ]])
      vim.g.mkdp_browserfunc = "OpenMarkdownPreview"
    end,
  },
}
