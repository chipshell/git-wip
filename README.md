# git-wip
Wip your git with quick commands and WIP commits

`git-wip` is a simple Git subcommand that helps manage your "WIP" (Work In Progress) commits. It allows you to create or amend a "WIP" commit to track ongoing work in a Git repository.

## Features

- **WIP Commit Management**:
  - If the last commit is a "WIP" commit, you can amend it.
  - If the last commit is not a "WIP" commit, a new "WIP" commit is created.
  - If no changes are detected, it reports the current WIP state and exits.
  
- **Minimal User Interaction**: The script only asks for user input when necessary using simple `y/n` options.

## Installation

1. Download or clone this repository to your local machine.
2. Rename the script to `git-wip` (if not already done).
3. Make it executable:
   ```bash
   chmod +x git-wip
Add git-wip to your PATH by moving it to a directory that is already in your PATH, e.g., ~/bin:

bash
Copy
Edit
mkdir -p ~/bin
mv git-wip ~/bin/
Ensure ~/bin is included in your PATH:

bash
Copy
Edit
export PATH="$HOME/bin:$PATH"
Reload the shell configuration:

bash
Copy
Edit
source ~/.bashrc  # or ~/.zshrc
Usage
After installation, you can use git wip as a subcommand directly from your Git repositories.

If there are changes:
If the last commit is "WIP", the script will prompt you to amend the commit or create a new one.
If the last commit is not "WIP", the script will prompt you to create a new "WIP" commit.
If there are no changes:
The script will check the last commit message:
If it's a "WIP" commit, it will exit with a message indicating the WIP state.
If it's not a "WIP" commit, the script will exit without changes.
Example Usage:
Case 1: Last commit is a "WIP" commit and there are changes:
bash
Copy
Edit
$ git wip
The last commit is a WIP commit.
Do you want to amend this commit? (y/n): y
WIP commit updated.
Case 2: Last commit is not a "WIP" commit and there are changes:
bash
Copy
Edit
$ git wip
The last commit is not a WIP commit.
Do you want to create a new WIP commit? (y/n): y
New WIP commit created.
Case 3: No changes detected:
bash
Copy
Edit
$ git wip
No changes detected. Exiting.
Case 4: Last commit is a "WIP" commit, but no changes:
bash
Copy
Edit
$ git wip
The last commit is a WIP commit and there are no changes.
License
This project is licensed under the MIT License - see the LICENSE file for details.

Contributing
Feel free to fork this repository, open issues, or submit pull requests to contribute to the script.

vbnet
Copy
Edit

### Key Updates:
- **Git Subcommand**: The script is now a `git` subcommand (`git wip`).
- **Usage Instructions**: The README explains how to use the script as a Git subcommand and how to install it globally.
- **Simplified Workflow**: The process of installing and using the script is now more streamlined for users familiar with Git.

Let me know if you need further assistance!
