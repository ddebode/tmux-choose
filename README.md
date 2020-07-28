# tmux-choose
**Tmux choose plugin:** Choose which terminal command you want to switch to. This plugin will show the user a selection screen where the user can choose with the number keys to execute a command in a separate zoomed-in pane. When the command is done, the user is switched back to the original pane.

Inspired by tmux-sidebar but I wanted to easily switch to multiple different commands in a separate tmux pane. 

# Usage

Press ( <kbd>prefix</kbd> + <kbd>t</kbd> ) to show the choose menu. 

<img src="/images/demo-tmux-choose.gif" width="500" height="400"/>

# Configuration

- @choose-options: Configure which commands should be shown in the choose menu separated by comma.

```
set -g @choose-options "htop,vifm .,lazygit,vi $HOME/.bashrc"

```
- @choose-key: Configure which key to trigger the choose menu.

