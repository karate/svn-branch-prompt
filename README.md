This is a bash script that prints the current svn branch name (or 'trunk' if you're working on trunk).

It's written to be used in the shell prompt, similar to the very common `git branch` command used for git repos.

## Installation:
Just copy the script in a directory inside your `$PATH` eg: `~/.local/bin`

## Usage:

### bash:
Add the following in the `$PS1` variable (usualy set in `~/.bash_profile`, `~/.bashrc` or `/etc/bashrc`)
```
\$(print_working_svn_branch.sh)
```
eg:
```
export PS1="\u@\h \w \$(print_working_svn_branch.sh)\n$"
```

### fish shell:
Edit `~/.config/fish/config.fish`
Add the following to you `fish_prompt` function:
```
echo -n ' '(print_working_svn_branch.sh)
``
