export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
# Your previous /Users/kahshiu.chong/.bash_profile file was backed up as /Users/kahshiu.chong/.bash_profile.macports-saved_2022-09-26_at_06:52:28
##

# MacPorts Installer addition on 2022-09-26_at_06:52:28: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.
#
export DENO_INSTALL="/Users/kahshiu.chong/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

export FZF_DEFAULT_COMMAND='ag -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

alias ctags="`brew --prefix`/bin/ctags"
