# Linux Module Notes


---

## Commands
| Command   | Description                                    |
|-----------|------------------------------------------------|
| `ls`      | List files and directories in the current directory. |
| `pwd`     | Print the working directory.                  |
| `cd`      | Change directory.                             |
| `mkdir`   | Make a new directory.                         |
| `rmdir`   | Remove an empty directory.                    |
| `/`       | Root directory.                               |
| `echo`    | Write text onto the program or into a file.    |
| `cat`     | View the contents of a file.                  |
| `grep`   | Search for patterns within file contents.      |
| `cp`              | Copy files.                                   |
| `cp -r`           | Copy directories recursively.                 |
| `mv`              | Move or rename files/directories.             |
| `rm -r`           | Remove non-empty directories recursively.     |
| `head`            | Print the first 10 lines of a file.           |
| `tail`            | Print the last 10 lines of a file.            |
| `head -n` / `tail -n` | Print a specific number of lines.          |

---

## Working with Vim
Vim is a powerful text editor. Below are some common commands for navigating and editing:

### Modes in Vim
- Command Mode (default):** For navigation and commands.
- Insert Mode:** Enter `i` to start writing.
- Visual Mode:** Enter `v` to select text.

### Editing Commands
| Command  | Description                              |
|----------|------------------------------------------|
| `dd`     | Delete the current line.                |
| `D`      | Delete from the cursor to the end of the line. |
| `y`      | Copy text.                              |
| `p`      | Paste copied text.                      |
| `u`      | Undo the last change.                   |
| `r`      | Redo the last undone change.            |

### Settings
| Command              | Description                              |
|----------------------|------------------------------------------|
| `:set number`        | Show line numbers.                      |
| `:set nonumber`      | Hide line numbers.                      |

### Saving and Exiting
| Command      | Description                              |
|--------------|------------------------------------------|
| `:w`         | Save changes.                           |
| `:q`         | Quit Vim.                               |
| `:wq`        | Save and quit.                          |
| `:q!`        | Force quit without saving.              |

---

## Shells
- Bash: Default Linux shell.
- Zsh: Highly customizable shell.

To check the current shell, use:
`echo $SHELL`

---

## Programs and Binaries**
- Programs: Written by developers to perform specific tasks.
- Commands: Small programs.
- Binaries (bin): Compiled versions of programs.

---

## Using `sudo` (Super User Do)
The `sudo` command allows executing tasks with elevated privileges.

### User Management
| Command                                   | Description                              
|-------------------------------------------|------------------------------------------|
| `sudo useradd <username>`                 | Add a new user.                         |
| `sudo passwd <username>`                  | Set or update the user password.         |
| `su - <username>`                         | Switch to the new user.                 |
| `sudo usermod -aG sudo <username>`        | Grant sudo access to a user.            |
| `sudo deluser <username>`                 | Remove a user.                          |
| `sudo groupadd <groupname>`               | Create a new group.                     |
| `sudo groupdel <groupname>`               | Delete a group.                         |

---

## Linux Command Structure
A typical Linux command has three parts:
`command [options] [arguments]`


### Example
`ls -a`
- Command: `ls`
- Options: `-a` (show hidden files)
- Arguments: `.` (current directory)
## File Permissions

### Types of Permissions
| Permission | Description      |
|------------|------------------|
| `r`        | Read permission. |
| `w`        | Write permission.|
| `x`        | Execute permission.|

### Using `chmod`
You can set file permissions using `chmod` with either binary (numbers) or string (letters):
- `r = 4`
- `w = 2`
- `x = 1`

Examples:
- `rwx = 7`
- `r-xr--r-- = 544`

The format consists of three parts:
1. User rights (first).
2. Group rights (second).
3. Others' rights (third).

### Other Commands
| Command      | Description                              |
|--------------|------------------------------------------|
| `chown`      | Change file ownership.                  |
| `chgroup`    | Change group ownership.                 |

---

## Standard Streams
| Stream             | Description                                       |
|--------------------|---------------------------------------------------|
| `stdin`            | Standard input (keyboard to running program).     |
| `stdout`           | Standard output (program to screen).              |
| `stderr`           | Standard error (error messages from programs).    |

---

## Environment Variables
Environment variables store configuration settings and important system information. These variables affect the behavior of processes on your system.

### Common Environment Variables
| Variable  | Description                              |
|-----------|------------------------------------------|
| `PATH`    | Directories where the system looks for executables. |
| `HOME`    | The current user’s home directory.       |
| `USER`    | The current user’s username.             |
| `SHELL`   | The shell program in use.                |

To dereference variables (access their values), use `$`. Only the values are returned.

---

## Aliases
Aliases are command shortcuts that make frequently used commands quicker to execute.

### Example
```bash
alias hello='echo "Hello world"'
```
Now, typing `hello` will output "Hello world".
## Linux CLI Shortcuts
| Shortcut      | Description                              |
|---------------|------------------------------------------|
| `history`     | Show all previous commands.             |
| `!<number>`   | Execute a command from history by its number. |
| `Ctrl + R`    | Reverse search through command history.  |
| `Ctrl + C`    | Kill a running command.                 |
| `Ctrl + Z`    | Suspend a running command.              |
| `Ctrl + A`    | Move the cursor to the beginning of the line. |
| `Ctrl + E`    | Move the cursor to the end of the line.  |


---


