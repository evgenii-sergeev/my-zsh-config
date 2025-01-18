# Zsh Configuration README

## Overview

This repository contains a customizable **Zsh configuration file** (`.zshrc`) designed to enhance your shell experience. The configuration provides an optimized, user-friendly environment with features like history management, syntax highlighting, command completion, and Git integration.

---

## Features

### 1. **History Configuration**
- **Persistent History**: Saves up to 10,000 commands in `~/.zsh_history`.
- **Duplicate Removal**: Avoid duplicate and consecutive duplicate entries in history.
- **Search History**: Use `Ctrl+R` for incremental backward search.

### 2. **Command Completion**
- Enabled by `compinit` for a seamless command-completion experience.
- Case-insensitive and fuzzy matching for more flexible completions.
- Supports auto-completion of file and directory names.

### 3. **Colors**
- Auto-detects terminal background (light or dark) and adjusts colors accordingly.
- Colored output for commands like `ls` and `grep`.

### 4. **Custom Prompt**
- Displays the current working directory in cyan (or blue for light themes).
- Git branch and status integration via `vcs_info`.

### 5. **Aliases**
- `ls='ls --color=auto'`: Enables colored output for `ls`.
- `ll='ls -lah'`: Lists all files in long format with human-readable sizes.
- `grep='grep --color=auto'`: Highlights matches in `grep` output.

### 6. **Shell Options**
- `autocd`: Change directories without typing `cd`.
- `interactive_comments`: Allows comments in interactive shells.
- `correct`: Suggests corrections for mistyped commands.
- `prompt_subst`: Enables dynamic content in the prompt.

### 7. **Keyboard Bindings**
- Emacs-style bindings enabled by default.
- `Ctrl+R`: Incremental history search.
- Arrow keys: Navigate history with search functionality.

### 8. **Git Integration**
- Displays Git branch, untracked files, and changes in the prompt.
- Configurable with `zstyle` for a tailored experience.

### 9. **Completion Menu**
- Menu completion with tab cycling.
- Highlights selected completion item for clarity.

---

## Installation

1. Clone this repository or copy the `.zshrc` file into your home directory:
   ```bash
   git clone <repo-url>
   cp .zshrc ~/ 
   ```
2. Source the configuration:
   ```bash
   source ~/.zshrc
   ```

---

## Usage

- **Update History**: Commands will automatically append to history.
- **Customize Aliases**: Modify aliases in the configuration to suit your workflow.
- **Adjust Colors**: Update `LSCOLORS` or `PROMPT` variables for personalized color schemes.

---

## Customization

Feel free to tweak the configuration to meet your preferences:
- **Aliases**: Add or modify for frequently used commands.
- **Prompt**: Adjust `PROMPT` and `vcs_info` styles.
- **Plugins**: Load additional Zsh plugins as needed.

---

## Troubleshooting

- **`compinit` Warnings**: Run `rm -f ~/.zcompdump*` and restart the shell.
- **Color Issues**: Ensure your terminal supports 256 colors or adjust `LSCOLORS`.

---

## License

This project is licensed under the [MIT License](LICENSE).

--- 

## Contribution

Contributions and improvements are welcome! Please submit a pull request or open an issue.
