# Personal dotfiles

Repo to manage my custom dotfiles. to get it use
`git clone https://github.com/duskmcdusk/dotfiles --bare <dotfiles folder>`

### why --bare?
Because i don't want a working directory that will try to add every file inside it to the repository.
It allows me to add files to track only when needed.

Next add an alias to handle other configurations

`alias dotfiles='/usr/bin/git --git-dir=$HOME/<dotfiles folder> --work-tree=$HOME'`

This creates an alias **dotfiles** that will call git using the <dotfiles folder> where the repo was cloned with
`--git-dir=$HOME/<dotfiles folder>`

And by setting the work tree `--work-tree=$HOME` it's easy to add new .config files to tracking because it's checking directly the home folder

the i can just `dotfiles add .vimrc` to track a specific file.

Another useful comand will be `dotfiles config --local status.showUntrackedFiles no` to avoid showing every untracked file when using `dotfiles status`

### Checking out files

After cloning the repository and setting the alias to apply the dotfiles use `dotfiles checkout`.
This will check out all the .config files into the appropriate folders and locations, the cool think about setting the git-dir and worktree is that the dotfiles folder will be treated as the home folder, so a file in **dotfiles/.config/i3** will checkout to **$HOME/.config/i3**.

It should be better to eliminate existing files
