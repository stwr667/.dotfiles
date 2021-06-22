source ./functions.sh

VSCODE_SETTINGS_DIR="$HOME/Library/Application Support/Code/User"
mkdir -p "$VSCODE_SETTINGS_DIR"

safelink `pwd`/vscode/settings.json "$VSCODE_SETTINGS_DIR/settings.json"
safelink `pwd`/vscode/keybindings.json "$VSCODE_SETTINGS_DIR/keybindings.json"
