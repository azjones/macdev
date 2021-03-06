# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH="/usr/local/bin:$PATH"
# Add `~/bin` to the `$PATH`
export PATH="$HOME/bin:$PATH"

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file