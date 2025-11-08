# My Personal Neovim Configuration

This repository houses my personal Neovim setup, managed with **Lazy** for fast, asynchronous plugin loading. This configuration is tuned for a clean, efficient, and keyboard-driven development workflow.

---

## ✨ Key Features & Plugins

| Category | Plugin/Tool | Description |
| :--- | :--- | :--- |
| **Plugin Manager** | **Lazy** | A high-performance, asynchronous plugin manager written in Lua. |
| **Color Scheme** | **Zenbones** | A collection of low-noise, contrast-based colorschemes, focusing on font variations. |
| **Status Line** | **lualine** | A fast and highly customizable status line, configured to match the low-key **Zenbones** aesthetic. |
| **File Explorer** | **neo-tree** | A modern file explorer, buffer, and Git status manager. |
| **Syntax** | **nvim-treesitter** | Improved syntax highlighting and structural navigation based on tree-sitter grammars. |
| **Fuzzy Finder** | **telescope** | A highly extendable fuzzy finder for files, buffers, help tags, and more. |
| **Startup Screen** | **alpha-nvim** | A clean, customized start screen dashboard. |

---

## 🚀 Installation

### Prerequisites

* **Neovim** (v0.9.0 or later)
* **Git**

### System Dependencies

For optimal performance, particularly for the search features in **Telescope**:

* **ripgrep (`rg`)**: Required for the fast and recursive file content search (`:Telescope live_grep`). This must be installed as a separate command-line tool and be accessible in your system's PATH.

> **Windows Users Note**
> If you are on Windows, you may need a POSIX-like environment like **MinGW** (part of MSYS2) to ensure external command-line tools like `ripgrep` and others used by Neovim's LSP/linting system function correctly.

### Installation Steps

Neovim's configuration directory depends on your operating system:
* **Linux/macOS:** `~/.config/nvim`
* **Windows:** `%LOCALAPPDATA%\nvim` (or `$env:LOCALAPPDATA\nvim` in PowerShell)

1.  **Backup Existing Config (Optional):**
    * **Linux/macOS:** `mv ~/.config/nvim{,.bak}`
    * **Windows (PowerShell):** `Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak`

2.  **Clone the Repository:**
    Clone this repository into the appropriate Neovim configuration directory.

    * **Linux/macOS:**
        ```bash
        git clone https://github.com/eipna/Neovim-Config ~/.config/nvim
        ```
    * **Windows (PowerShell/CMD):**
        ```bash
        git clone https://github.com/eipna/Neovim-Config $env:LOCALAPPDATA\nvim

3.  **Launch Neovim:**
    ```bash
    nvim
    ```
    On the first launch, **Lazy** will automatically download and install all required plugins. You may need to run `nvim` a second time for everything to fully settle.

---

## ⚙️ Customization

All configuration files are written in **Lua**.

The structure mirrors your setup:
* `init.lua`: The main entry point for Neovim.
* `lua/vim-configs.lua`: Contains all **core Vim options** and **global settings**.
* `lua/plugins.lua`: Defines which plugins **Lazy** should install.
* `lua/plugins/`: Contains individual configuration files (e.g., `alpha.lua`, `telescope.lua`) that configure the corresponding plugin.
