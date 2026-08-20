# Design Spec: Athena-Eww Integration with Waybar

This document outlines the design for integrating components from the [athena-eww](https://github.com/haikal-hakim/athena-eww) repository into the user's CachyOS Hyprland environment.

## 1. Objectives & Constraints
*   **System Completeness:** Copy over the dotfiles from the cloned repository (`dunst`, `fastfetch`, `kitty`, `starship`, `eww`) to `~/.config/`.
*   **Wallpaper and Rofi Exclusions:**
    *   Do **NOT** copy or modify the `rofi` configuration folder.
    *   Do **NOT** overwrite the existing wallpaper setting in `hyprland.conf` (keep `swaybg` intact).
*   **Waybar Retention:** Maintain Waybar as the primary status bar on startup. Do not launch Eww's top bar (`window_bar`) automatically.
*   **Shell Customization:** Configure Kitty to use Zsh as the default shell and copy the custom `.zshrc`.
*   **Control Panel Access:** Enable manual launching of Eww's Quick Settings Panel (`window_panel`) containing the WiFi selector, Bluetooth manager, and audio/brightness sliders.
*   **Desktop Dashboard:** Enable manual launching of the Eww Dashboard (`window_dashboard`).

## 2. Packages to Install
We will install the following packages via package managers:
1.  **`eww`** (AUR): Built with Wayland support (`gtk-layer-shell` dependency). Installed via `paru -S eww`.
2.  **`starship`** (Arch repositories): Prompt manager. Installed via `sudo pacman -S starship`.
3.  **`zoxide`** (Arch repositories): Directory navigation tool used by the repository's `.zshrc`. Installed via `sudo pacman -S zoxide`.

## 3. Directory and File Operations

### 3.1. Dotfile Deployments
We will copy files from `/home/rasmus/athena-eww-temp/` to the user's home directory:
*   `.config/eww/` -> `~/.config/eww/` (Fully copied)
*   `.config/dunst/` -> `~/.config/dunst/` (Overwrite/merge)
*   `.config/fastfetch/` -> `~/.config/fastfetch/` (Overwrite/merge)
*   `.config/kitty/` -> `~/.config/kitty/` (Overwrite/merge)
*   `.config/starship/` -> `~/.config/starship/` (Overwrite/merge)
*   `.zshrc` -> `~/.zshrc` (Overwrite/merge)

### 3.2. Script Permissions
Mark all scripts inside Eww config folders as executable:
*   `~/.config/eww/toggle_theme.sh`
*   `~/.config/eww/bar/scripts/*.sh`
*   `~/.config/eww/corner/scripts/*.sh`
*   `~/.config/eww/dashboard/scripts/*.sh`
*   `~/.config/eww/panel/scripts/*.sh`

## 4. Configuration Adjustments

### 4.1. WiFi Chooser Fallback (`connect_wifi.sh`)
Since `~/.config/rofi/password.rasi` is excluded, `connect_wifi.sh` will fall back to using standard `rofi -dmenu -password -p "$SSID"`. This is fully compatible and does not require copying any rofi configuration.

### 4.2. Kitty Terminal Shell
In `~/.config/kitty/kitty.conf`, the shell is set to Zsh. We will ensure this is properly linked to the user's path, and that `.zshrc` is correctly in place.

### 4.3. Hyprland Configuration (`hyprland.conf`)
We will perform the following non-destructive modifications:
1.  Add `exec-once = eww daemon` to run the Eww widget server on startup.
2.  Add a keybinding to toggle the Quick Settings Panel:
    ```ini
    bind = $mainMod, P, exec, eww open --toggle window_panel
    ```
3.  Modify the conflicting `system-config-printer` keybinding:
    ```diff
    -bind = $mainMod, P, exec, system-config-printer
    +bind = $mainMod SHIFT, P, exec, system-config-printer
    ```
4.  Add a keybinding to toggle the dashboard:
    ```ini
    bind = $mainMod, D, exec, eww open --toggle window_dashboard
    ```

## 5. Rollback and Validation Plan
*   **Backups:** Create backup copies of any existing files (e.g., `~/.config/kitty/kitty.conf`, `~/.config/hypr/hyprland.conf`, `~/.config/dunst/dunstrc`) as `.bak` before writing changes.
*   **Verification:**
    *   Validate that `eww daemon` starts without errors.
    *   Verify that `SUPER + P` toggles the Eww panel.
    *   Verify that `SUPER + D` toggles the dashboard.
    *   Verify that Kitty launches with Zsh, using the starship prompt.
