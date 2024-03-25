# Working with shells

<img src="https://cdn.icon-icons.com/icons2/2667/PNG/512/iterm_terminal_icon_161274.png" alt="iterm-logo" display="inline-block" width="30%"/> <img src="https://cdn.icon-icons.com/icons2/2107/PNG/512/file_type_vscode_icon_130084.png" alt="vscode-logo" display="inline-block" width="30%"/>

### Ayyyy
This is a collection of exercises that we're going to work through as we progress through the shell & terminal session(s).

### Live in the terminal
Strap on your neck-beards folks, we're going to be using either a terminal or a code editor to complete all of these exercises. It's one of those things that you'll need to get used to using as much as you can to build up familiarity through repetition.

## Setting Up
Start off by cloning this repo to your local machine, and opening it in VSCode.
```sh
git clone https://github.com/banbone/shell-course.git
code shell-course
```
Each section we move on to will be in it's own folder, so to get started in a section, use `cd` to change directory into the section we'll be working through.

Some solutions will ask you to execute a script - in order to do this, make whatever changes to the file that you need to, and execute the script with the command `./script.sh`.

## Fixing any mistakes
1. Don't panic, everyone makes mistakes!
2. If there's a process in your terminal that's stuck, 9/10 times pressing `control + C` will stop it!
3. If you make a mistake and want to reset the directory, do the following:
  - Undo any changes to tracked files with the command `git restore .`
  - Run `git status` to see any new files that you've created which the restore can't remove.
  - Use `rm` to delete the files that git couldn't fix.
  > ⚠️ Make sure you're in the correct working directory before doing this!

## Getting `--help`
  > See what I did there? 😏

If you get stuck on any of the sections, or using any commands in general, you've got options:
- Troubleshoot, troubleshoot and troubleshoot! You can do it!
- Use the `man` pages utility. Just type `man <your_command...>` to see the manual entry fro the developer (if one exists!)
- Use the `--help` or `-h` command line options to get instructions
- Do a google search along the lines of "_how do I ... in a zsh terminal / script?_"
- Ask someone for some help!

If you're stuck but you find a solution, share it with the whole class! There's nothing worse than having a problem, stumbling across an old github issue or Stack Overflow question with the exact same question as you, only for the reporter to say _'Don't worry I figured it out!'_ without giving the actual solution! Don't be that guy! Sharing is caring ♥️
