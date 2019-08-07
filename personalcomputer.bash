

  #begin home stuff
  echo "you are at home"

  #load nvm
  [[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh
  # nvm use 8

  # Add Haskell GHC 7.10.3 to the PATH, via https://ghcformacosx.github.io/
  export GHC_DOT_APP="/Applications/ghc-7.10.3.app"
  if [ -d "$GHC_DOT_APP" ]; then
    export PATH="${HOME}/.local/bin:${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
  fi

  # added by Anaconda2 5.3.1 installer
  # >>> conda init >>>
  # !! Contents within this block are managed by 'conda init' !!
  __conda_setup="$(CONDA_REPORT_ERRORS=false '/anaconda2/bin/conda' shell.bash hook 2> /dev/null)"
  if [ $? -eq 0 ]; then
      \eval "$__conda_setup"
  else
      if [ -f "/anaconda2/etc/profile.d/conda.sh" ]; then
          . "/anaconda2/etc/profile.d/conda.sh"
          CONDA_CHANGEPS1=false conda activate base
      else
          \export PATH="/anaconda2/bin:$PATH"
      fi
  fi
  unset __conda_setup
# end of personal machine