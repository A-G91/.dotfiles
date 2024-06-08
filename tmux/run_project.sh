
#!/bin/bash

if [ -f Cargo.toml ]; then
    tmux split-window -h 'cargo run; echo "Press Enter to close this pane..."; read'
elif [ -f go.mod ]; then
    tmux split-window -h 'go run .; echo "Press Enter to close this pane..."; read'
else
    tmux display-message 'No project detected'
fi

