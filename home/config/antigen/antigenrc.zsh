# NOTE: Bundles are installed into ${HOME}/.antigen/bundles/
if [[ "$(uname)" =~ "Darwin" ]]; then
    source $(command brew --prefix)/share/antigen/antigen.zsh
else
    source /usr/share/zsh-antigen/antigen.zsh
fi

# Load the oh-my-zsh's library.
antigen use oh-my-zsh
# antigen use ohmyzsh/ohmyzsh

# # Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle git
# antigen bundle heroku
# antigen bundle pip
# antigen bundle lein
antigen bundle command-not-found
antigen bundle colored-man-pages

# Syntax highlighting bundle.
# antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle agkozak/zsh-z
antigen bundle zdharma-continuum/fast-syntax-highlighting
antigen bundle zdharma-continuum/history-search-multi-word --branch=main
antigen bundle joel-porquet/zsh-dircolors-solarized.git

# NVM bundle
export NVM_LAZY_LOAD=true
antigen bundle lukechilds/zsh-nvm
antigen bundle Sparragus/zsh-auto-nvm-use

# # Load the theme.
antigen theme romkatv/powerlevel10k

# Tell Antigen that you're done.
antigen apply

# zsh-dircolors-solarized settings
if [[ -f $HOME/.antigen/bundles/joel-porquet/zsh-dircolors-solarized/dircolors-solarized/dircolors.ansi-dark ]]; then
    source $HOME/.antigen/bundles/joel-porquet/zsh-dircolors-solarized/zsh-dircolors-solarized.zsh
fi
