# Temp
alias netcore 'code ~/repos/vip-netcore/imos/imos/services/imosapp-netcore'

# General
alias v nvim
alias vs 'nvim -S'
alias vf 'nvim (fzf)'
alias e. 'explorer.exe .'
alias unalias 'functions -e'
alias r ranger
alias pws powershell.exe
alias dev devenv.exe
alias msb MSBuild.exe
alias bat batcat
alias cmd 'cmd.exe /c'
alias fd fdfind

function fish_user_key_bindings
  fzf_key_bindings
end

# CMake Commands
alias cg 'cmake -S . -B build-WSL-Ubuntu20-g++9_4/ -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=ON'
alias cb 'cmake --build build-WSL-Ubuntu20-g++9_4/ --parallel 16'
alias cb4 'cmake --build build-WSL-Ubuntu20-g++9_4/ --parallel 4'
alias cb8 'cmake --build build-WSL-Ubuntu20-g++9_4/ --parallel 8'
alias cdict 'cmake --build build-WSL-Ubuntu20-g++9_4/ --target dict'
alias cformat 'cmake --build build-WSL-Ubuntu20-g++9_4/ --target cmake-format'
alias cb1 'cmake --build build-WSL-Ubuntu20-g++9_4/'
alias ct 'ctest --test-dir build-WSL-Ubuntu20-g++9_4/'

# Git Commands
# alias git 'git.exe' 
alias g git
# alias gl 'git log --oneline --all --graph --decorate'
alias gl 'git log --graph --decorate -3'
alias gs 'git status'
alias gd 'git diff'
alias gp 'git pull'
alias gpu 'git push'
alias gdc 'git diff --cached'
alias gcm 'git checkout main'

# Move around directories
alias zv 'cd ~/.config/nvim'
alias zi 'cd ~/repos/vip/imos/imos'
alias zf 'cd ~/.config/fish'
alias zw 'cd /mnt/c/Users/jsilva'

# Edit key files
alias ev 'ranger ~/.config/nvim'
alias ef 'nvim ~/.config/fish/config.fish'

### IMOS Specific ###
# Functions
function get_claimId
	for x in (seq 20)
		echo $x
		if not pgrep claim
			sleep 1
		end
	end
end

function io 
  cd ~/repos/vip/imos/imos/exe
  ./imosshell.exe -u admin -p imos3k $argv
end

function ioj_v
  cd ~/repos/veslink-vip/imos/imos/exe
  ./imosshell.exe -u admin -p imos3k jsilva_7.11 
end

function ioj
  cd ~/repos/vip/imos/imos/exe
  ./imosshell.exe -u admin -p imos3k jsilva_7.11 
end
# alias idev 'zi; cmd.exe /c \'/Users/jsilva/repos/vip/imos/imos/imosdev.bat \''
# # net use H:
# # net.exe use h: \\VESON-BOS-FS1\Hercules1
# alias iog 'powershell.exe start \'H:Tools\runimos_g.exe\''
# alias ild 'zi; cmd.exe /c \'/Users/jsilva/repos/vip/imos/imos/imosdev.bat libd\''
# alias ild_v 'zi; cmd.exe /c \'/Users/jsilva/repos/veslink-vip/imos/imos/imosdev.bat libd\''
# alias id 'zi; cmd.exe /c \'/Users/jsilva/repos/vip/imos/imos/imosdev.bat dict\''
# alias id_v 'zi; cmd.exe /c \'/Users/jsilva/repos/veslink-vip/imos/imos/imosdev.bat dict\''

# alias ult_voyest 'cd ~/repos/vip/imos/imos/cha/ultimator; msb ultimator_dev.sln /p:Configuration=\'voyest - debug\''
# alias ult_voy 'cd ~/repos/vip/imos/imos/cha/ultimator; msb ultimator_dev.sln /p:Configuration=\'voy - debug\''
# alias ult_gcargo 'cd ~/repos/vip/imos/imos/cha/ultimator; msb ultimator_dev.sln /p:Configuration=\'gcargo - debug\''
# alias ult_vcin 'cd ~/repos/vip/imos/imos/cha/ultimator; msb ultimator_dev.sln /p:Configuration=\'vcin - debug\''
# alias voyacts 'cd ~/repos/vip/imos/imos/opr/voyacts; msb voyacts.sln'
# alias laytime 'cd ~/repos/vip/imos/imos/opr/laytime; msb laytime.sln'
# alias claim 'cd ~/repos/vip/imos/imos/opr/claim; msb claim.sln'
