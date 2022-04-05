if [ ! "$TMUX" ]; then
        tmux attach -t main || tmux new -s main
fi
