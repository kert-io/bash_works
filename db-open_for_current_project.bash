
#--------------------------------------------------
#  Open Database for current project - 
#       Run within a project directory.  
#       Assumes config directory.  
#       Assumes database.yml file with database config.                   
#       Currently assumes mysql only.
#--------------------------------------------------

db() {
  path=$(pwd)
  path="$path/config/database.yml"
  username=$( egrep "username" $path | head -n 1 | sed 's/\ //g' | sed 's/username://')
  password=$( egrep "password" $path | head -n 1 | sed 's/\ //g' | sed 's/password://')
  database=$( egrep "database" $path | head -n 1 | sed 's/\ //g' | sed 's/database://')
  if [ -z $password ]
  then
    mysql -u$username $database
  else
    mysql -u$username -p$password $database
  fi
} 
  
#-------------------------------------------------