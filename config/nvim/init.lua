-- Options
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.mouse = "a"
opt.clipboard = "unnamedplus"
opt.signcolumn = "yes:1"

opt.winborder = "rounded"

opt.guicursor = ""
opt.splitright = true
opt.splitbelow = true

opt.list = false

opt.cursorline = true

opt.scrolloff = 8

-- Lazy Install
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    -- Common Dependencies
    { "nvim-lua/plenary.nvim" },

    -- Syntax Highlight
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                highlight = { enable = true },
                ensure_installed = {
                    "lua",
                    "vim",
                    "go",
                    "python",
                    "php",
                    "vimdoc",
                    "bash",
                    "markdown",
                },
            })
        end,
    },

    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                background = {
                    light = "latte",
                    dark = "mocha",
                },
                float = {
                    transparent = true,
                },
            })
            vim.cmd.colorscheme("catppuccin")
        end,
    },

    {
        "f-person/auto-dark-mode.nvim",
        config = function()
            require("auto-dark-mode").setup({
                update_interval = 1000,
                set_dark_mode = function()
                    vim.o.background = "dark"
                end,
                set_light_mode = function()
                    vim.o.background = "light"
                end,
            })
            require("auto-dark-mode").init()
        end,
    },

    -- Fuzzy Finders
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            local telescope = require("telescope")
            telescope.setup({
                defaults = {
                    vimgrep_arguments = {
                        "rg",
                        "--color=never",
                        "--no-heading",
                        "--with-filename",
                        "--line-number",
                        "--column",
                        "--smart-case",
                        "--hidden",
                        "--follow",
                    },
                },
                pickers = {
                    find_files = {
                        hidden = true,
                        follow = true,
                    },
                },
            })

            local map = vim.keymap.set
            local builtin = require("telescope.builtin")
            map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
            map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope grep files" })
            map("n", "<leader>fb", builtin.buffers, { desc = "Telescope grep buffers" })
            map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope search helps" })

            map("n", "<leader>fd", function()
                builtin.find_files({ cwd = "~/.dotfiles" })
            end, { desc = "Dotfiles" })

            map("n", "<leader>fn", function()
                builtin.find_files({ cwd = vim.fn.resolve("~/.config/nvim") })
            end, { desc = "Neovim files" })
        end,
    },

    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "gopls" },
                automatic_enable = false,
            })

            local caps = vim.lsp.protocol.make_client_capabilities()
            caps.textDocument.completion.completionItem.snippetSupport = true
            caps.textDocument.foldingRange = { dynamicRegistration = false, lineFoldingOnly = true }

            vim.lsp.config("lua_ls", {
                capabilities = caps,
                settings = {
                    Lua = {
                        workspace = { checkThirdParty = false },
                        diagnostics = { globals = { "vim" } },
                    },
                },
            })

            vim.lsp.config("gopls", {
                capabilities = caps,
                settings = {
                    gopls = {
                        analyses = { unusedparams = true },
                        staticcheck = true,
                    },
                },
            })

            vim.lsp.config("zls", {
                capabilities = caps,
                settings = {
                    zls = {
                        semantic_tokens = "partial",
                    },
                },
            })

            vim.lsp.enable("lua_ls")
            vim.lsp.enable("gopls")
            vim.lsp.enable("zls")

            local map = vim.keymap.set
            map("n", "grn", vim.lsp.buf.rename, { desc = "LSP rename" })
        end,
    },
})

vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
        vim.lsp.buf.format()
    end,
})

-- Keymaps
local map = vim.keymap.set
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
map("n", "<leader>q", "<cmd>q<cr>", { desc = "Close window" })
