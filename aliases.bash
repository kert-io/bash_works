#   -----------------------------
#   2.  MAKE TERMINAL BETTER
#   -----------------------------

# Basics
########

alias la='ls -a'  													# list all
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='subl'                           # edit: just an alias for subl - Opens any file in sublime editor
alias f='open -a Finder ./'                 # f: Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~: Go Home
alias dev="ssh <user>@<dev_domain>" 	 	   	# sign into dev via ssh
alias prod="ssh <user>@<production_domain>"	#sign into Production via ssh


# dev/production
################

#Shortcuts for starting thialias th='thin start -a 127.0.0.1 -p 4000'				#port 4000
alias th4='thin start -a 127.0.0.1 -p 4000'				#port 4000
alias thd='thin start -a 127.0.0.1 -p 4000 -d'    #Adds daemon flag for continuous run.
alias th5='thin start -a 127.0.0.1 -p 5000'				#port 5000
alias th6='thin start -a 127.0.0.1 -p 6000'				#port 6000

alias hm='cd ~/<project_home_path>'											#Get back to current project directory. I change this for whatever project I am working most on currently. 

#launch Sidekiq - My current go to async worker bee.  This is purely for testing. Best to run with Monit or other automated process monitor for production.
alias skiqs='bundle exec sidekiq -d --environment production -L log/sidekiq.log'


#Monitoring shortcuts
alias psbase="ps aux | sort -nk +6 | tail -n 15"									#pulls the top 14 processes by mem usage - good gauge of what you want to see.
#alias psbase="ps aux | egrep 'sidekiq|redis|dtach|thin|ruby' 		#alternate format of above, specify process by name
alias memgrep="egrep --color 'Mem|Cache|Swap' /proc/meminfo"			#quick snapshot of current total usage.