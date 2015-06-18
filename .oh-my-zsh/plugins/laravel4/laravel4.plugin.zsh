# Laravel4 basic command completion
_laravel4_get_command_list () {
<<<<<<< HEAD
	php artisan --no-ansi | sed "1,/Available commands/d" | awk '/^  [a-z]+/ { print $1 }'
=======
	php artisan --no-ansi | sed "1,/Available commands/d" | awk '/^ +[a-z]+/ { print $1 }'
>>>>>>> 140034605edd0f72c548685d39e49687a44c1b23
}

_laravel4 () {
  if [ -f artisan ]; then
    compadd `_laravel4_get_command_list`
  fi
}

compdef _laravel4 artisan
compdef _laravel4 la4

#Alias
alias la4='php artisan'

alias la4dump='php artisan dump-autoload'
alias la4cache='php artisan cache:clear'
alias la4routes='php artisan routes'
