cd C:\deployed

Function git_log_oneline { git log --oneline }
Set-Alias -Name glo -Value git_log_oneline

Function git_status { git status }
Set-Alias -Name gs -Value git_status

Function git_add { git add $args }
Set-Alias -Name ga -Value git_add

# Remove existing built-in gc alias for Get-Content
Del alias:gc -Force 
Function git_commit { git commit $args }
Set-Alias -Name gc -Value git_commit

Function git_diff { git diff }
Set-Alias -Name gd -Value git_diff

Function git_branch { git branch }
Set-Alias -Name gb -Value git_branch

# Remove existing built-in gp alias for Get-ItemProperty
Del alias:gp -Force 
Function git_push { git push }
Set-Alias -Name gp -Value git_push

Function notepad_alias { notepad++ }
Set-Alias -Name npp -Value notepad_alias

Function sublime_text_alias { sublime_text }
Set-Alias -Name subl -Value sublime_text_alias

# Allow ctrl+w to close terminal window
Set-PSReadlineKeyHandler -Chord Ctrl+w -Function ViExit

# Shows navigable menu of all options when hitting Tab
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# grep alias. cat alias already in default aliases
Set-Alias -Name grep -Value Select-String