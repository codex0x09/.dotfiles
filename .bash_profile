# a.is bash running ?     b.is ~/.bashrc exists?    c.then fire it.
[ -n "$BASH_VERSION" ] && [ -f "$HOME/.bashrc" ] && source "$HOME/.bashrc"

# add private .bin to PATH
[ -d "$HOME/.bin" ] && PATH="$HOME/.bin:$PATH"
