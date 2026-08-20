# Implementation Plan: Athena-Eww Integration

This plan outlines the sequential tasks to integrate the Eww widgets, shell setup, and other dotfiles into your CachyOS Hyprland desktop environment, excluding wallpaper changes and Rofi configs.

## 1. Package Installation
*   **Task 1.1:** Install the `eww` AUR package.
    *   *Command:* `paru -S --noconfirm eww`
*   **Task 1.2:** Install standard repository packages (`starship` and `zoxide`).
    *   *Command:* `sudo pacman -S --noconfirm starship zoxide`

## 2. Configuration Backups
Before copying new configurations, we will back up any existing configurations to prevent data loss.
*   **Task 2.1:** Create backup directory `~/dotfiles_backup/`.
*   **Task 2.2:** Back up the following files/directories if they exist:
    *   `~/.config/eww`
    *   `~/.config/dunst`
    *   `~/.config/fastfetch`
    *   `~/.config/kitty`
    *   `~/.config/starship`
    *   `~/.config/hypr/hyprland.conf`
    *   `~/.zshrc`

## 3. Configuration Deployment
Copy dotfiles from `/home/rasmus/athena-eww-temp/` to the home directory, excluding Rofi.
*   **Task 3.1:** Copy `.config/eww/` to `~/.config/eww/`.
*   **Task 3.2:** Copy `.config/dunst/` to `~/.config/dunst/`.
*   **Task 3.3:** Copy `.config/fastfetch/` to `~/.config/fastfetch/`.
*   **Task 3.4:** Copy `.config/kitty/` to `~/.config/kitty/`.
*   **Task 3.5:** Copy `.config/starship/` to `~/.config/starship/`.
*   **Task 3.6:** Copy `.zshrc` to `~/.zshrc`.

## 4. Permissions and Script Setup
*   **Task 4.1:** Grant execute permissions to all Eww scripts:
    *   `chmod +x ~/.config/eww/toggle_theme.sh`
    *   `chmod +x ~/.config/eww/bar/scripts/*.sh`
    *   `chmod +x ~/.config/eww/corner/scripts/*.sh`
    *   `chmod +x ~/.config/eww/dashboard/scripts/*.sh`
    *   `chmod +x ~/.config/eww/panel/scripts/*.sh`

## 5. Hyprland Configuration Updates
*   **Task 5.1:** Update `~/.config/hypr/hyprland.conf` with Eww daemon startup and keybindings:
    *   Insert `exec-once = eww daemon`
    *   Update `bind = $mainMod, P, exec, system-config-printer` to `bind = $mainMod SHIFT, P, exec, system-config-printer`
    *   Insert `bind = $mainMod, P, exec, eww open --toggle window_panel`
    *   Insert `bind = $mainMod, D, exec, eww open --toggle window_dashboard`

## 6. Verification and Validation
*   **Task 6.1:** Run `eww daemon` manually (or restart Hyprland) and verify it starts successfully.
*   **Task 6.2:** Verify that pressing `SUPER + P` correctly toggles the Eww quick-settings panel.
*   **Task 6.3:** Verify that pressing `SUPER + D` correctly toggles the dashboard.
*   **Task 6.4:** Launch a new Kitty terminal window to verify that it uses Zsh and shows the Starship prompt with custom aliases (`ls`, `ll`).
