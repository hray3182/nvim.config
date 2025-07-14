# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Neovim configuration based on LazyVim, a Neovim starter template. The configuration includes:

- **Plugin Management**: Uses lazy.nvim for plugin management with LazyVim as the foundation
- **Formatting**: Configured with conform.nvim for multiple languages (Lua, Python, JavaScript/TypeScript, Go, Rust)
- **File Management**: Yazi integration for file browsing
- **AI Integration**: GitHub Copilot and claude-code.nvim plugin for AI assistance

## Architecture

The configuration follows LazyVim's modular structure:

- `init.lua`: Entry point that bootstraps lazy.nvim and sets clipboard options
- `lua/config/`: Core LazyVim configuration (keymaps, options, autocmds)
- `lua/plugins/`: Custom plugin configurations that extend LazyVim

Key plugin configurations:
- `claude-code.lua`: Claude Code integration with vertical split, file refresh, and git root detection
- `formatting.lua`: Multi-language formatting with automatic installation via Mason
- `yazi.lua`: File manager integration

## Common Commands

### Formatting
```bash
# Format Lua files (used by stylua)
stylua lua/
```

### Plugin Management
```bash
# Launch Neovim to trigger lazy.nvim plugin installation
nvim
```

### File Management
- `<leader>fm`: Open Yazi file manager
- `<leader>ft`: Toggle Yazi session

### Claude Code Integration
- `<C-x>`: Toggle Claude Code terminal (normal/terminal mode)
- `<leader>cC`: Launch Claude Code with continue flag
- `<leader>cV`: Launch Claude Code with verbose flag

## Configuration Files

- `stylua.toml`: Lua formatting configuration (2 spaces, 120 column width)
- `lazyvim.json`: LazyVim extras configuration (includes Copilot and JSON language support)
- `lazy-lock.json`: Plugin version lockfile

## Development Notes

- The configuration uses format-on-save for all supported file types
- Git root detection is enabled for Claude Code integration
- File refresh is enabled with 100ms updatetime when Claude Code is active
- Plugin lazy-loading is disabled by default for custom plugins