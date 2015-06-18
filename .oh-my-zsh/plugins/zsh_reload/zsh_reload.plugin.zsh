# reload zshrc
function src()
{
<<<<<<< HEAD
  local cache="$ZSH/cache"
=======
  local cache=$ZSH_CACHE_DIR
>>>>>>> 140034605edd0f72c548685d39e49687a44c1b23
  autoload -U compinit zrecompile
  compinit -d "$cache/zcomp-$HOST"

  for f in ~/.zshrc "$cache/zcomp-$HOST"; do
    zrecompile -p $f && command rm -f $f.zwc.old
  done

  source ~/.zshrc
}
