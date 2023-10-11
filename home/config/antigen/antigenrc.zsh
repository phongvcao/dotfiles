# NOTE: Bundles are installed into ${HOME}/.antigen/bundles/
if [[ "$(uname)" =~ "Darwin" ]]; then
    source $(command brew --prefix)/share/antigen/antigen.zsh
else
    source /usr/share/zsh-antigen/antigen.zsh
fi

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# # Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle git
# antigen bundle heroku
# antigen bundle pip
# antigen bundle lein
antigen bundle command-not-found
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search

# # Load the theme.
# antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply
