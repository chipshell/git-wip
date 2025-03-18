# git wip

This script helps manage WIP (Work In Progress) commits in your Git repository. It allows you to create or amend a WIP commit, view diffs, check status, show git log, and more, with easy-to-use commands.

## Features

- **WIP Commit**: Create or amend a WIP commit.
- **Show Diff**: View the changes made in the repository.
- **Show Status**: View the current status of your working directory.
- **Custom Commit Message**: Amend or create a WIP commit with a custom message (default is "WIP").
- **Git Log**: View the git log.
- **Help**: Show the available options and their descriptions.

## Available Commands

- `w`: Create or amend a WIP commit.
- `q`: Quit the script without making any changes.
- `d`: Show the diff of the changes.
- `s`: Show the current git status.
- `m`: Amend the WIP commit with a custom message (default: "WIP").
- `l`: Show the git log.
- `?`: Display the available options and their descriptions.

## How to Use

1. **Download the Script**: Ensure that the script is executable by running `chmod +x git-wip.sh`.
2. **Run the Script**: Navigate to your Git repository and execute the script with `./git-wip.sh`.
3. **Select Options**: Once the script is running, it will show the available options. You can select an option by typing the corresponding letter and pressing Enter.

## How It Works

1. **Check Git Repository**: The script first checks if the current directory is a Git repository. If it is not, it exits.
2. **Show Status**: The script checks if there are any changes in the repository. If there are changes, it will display the status and allow you to create or amend a WIP commit. If there are no changes, it will still show the available options and allow you to perform actions like viewing the git log, diff, or status.
3. **Amend/Create WIP Commit**: If the last commit is a WIP, the script will amend it; otherwise, it will create a new WIP commit. You can also provide a custom message for the WIP commit.

## Installation

1. Download the `git-wip.sh` script to your repository.
2. Make the script executable by running the following command:
   ```bash
   chmod +x git-wip.sh
   ```

## Adding `git-wip` to PATH

To use `git-wip` as a Git subcommand, add the script to your PATH.

1. Move the script to a directory in your PATH, e.g., `/usr/local/bin` or `~/bin`:
   ```bash
   mv git-wip.sh /usr/local/bin/git-wip
   ```
2. You can now use it as a Git subcommand:
   ```bash
   git wip
   ```

## Example Usage

### Case 1: User has changes and selects `w` (WIP commit)

```bash
$ git wip
The last commit is not a WIP commit.
Available options:
w - WIP commit (amend or create)
q - Quit
d - Show diff
s - Show git status
m - Amend WIP commit with custom message (default: 'WIP')
l - Show git log
? - Show options help
Enter your choice (w/q/d/s/m/l/?): w
New WIP commit created.
```

### Case 2: User has no changes and selects `l` (git log)

```bash
$ git wip
No changes detected.
Available options:
w - WIP commit (amend or create)
q - Quit
d - Show diff
s - Show git status
m - Amend WIP commit with custom message (default: 'WIP')
l - Show git log
? - Show options help
Enter your choice (w/q/d/s/m/l/?): l
Showing git log:
abcdef1 Commit message 1
1234567 Commit message 2
```

### Case 3: User selects `m` (Custom commit message)

```bash
$ ./git-wip.sh
Enter custom message for the WIP commit (or leave blank for default 'WIP'):
Message: My custom WIP commit message
New WIP commit created with message: My custom WIP commit message
```

## Contributing

Feel free to fork the repository, submit pull requests, or open issues to improve the script.

## License
GPL v3.0
