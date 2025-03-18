#!/bin/bash

# Define options and their corresponding messages
declare -A options=(
    ["w"]="WIP commit (amend or create)"
    ["q"]="Quit"
    ["d"]="Show diff"
    ["s"]="Show git status"
    ["m"]="Amend WIP commit with custom message (default: 'WIP')"
    ["l"]="Show git log"
    ["?"]="Show options help"
)

# Check if the current directory is a git repository
if [ ! -d ".git" ]; then
    echo "Not a git repository. Exiting."
    exit 1
fi

# Get the status of the working directory
git_status=$(git status --porcelain)

# Get the last commit message
last_commit=$(git log -1 --pretty=%B)

# Display help message
show_help() {
    echo "Available options:"
    for key in "${!options[@]}"; do
        echo "$key - ${options[$key]}"
    done
}

# Show options help initially
show_help

# Handle changes and show the status
if [ -z "$git_status" ]; then
    echo "No changes detected."
else
    echo "There are changes to commit."
fi

# Prompt for user input and handle different actions
while true; do
    # Read single character input
    read -n 1 -p "Enter your choice (w/q/d/s/m/l/?): " choice
    echo

    case $choice in
        "w")
            # Create or amend the WIP commit
            if [[ "$last_commit" == "WIP" ]]; then
                # Amend the WIP commit
                git add -A
                git commit --amend --no-edit
                echo "WIP commit updated."
            else
                # Create a new WIP commit
                git add -A
                git commit -m "WIP"
                echo "New WIP commit created."
            fi
            break
            ;;
        "q")
            echo "No changes made. Exiting."
            break
            ;;
        "d")
            # Show the diff
            echo "Showing diff of the changes:"
            git diff
            ;;
        "s")
            # Show git status
            echo "Showing git status:"
            git status
            ;;
        "m")
            # Amend or create WIP commit with a custom message
            echo "Enter custom message for the WIP commit (or leave blank for default 'WIP'):"
            read -p "Message: " custom_message
            if [[ -z "$custom_message" ]]; then
                custom_message="WIP"  # Default to "WIP" if no message is provided
            fi
            if [[ "$last_commit" == "WIP" ]]; then
                # Amend the WIP commit with custom or default message
                git add -A
                git commit --amend --no-edit -m "$custom_message"
                echo "WIP commit amended with message: $custom_message"
            else
                # Create a new WIP commit with custom or default message
                git add -A
                git commit -m "$custom_message"
                echo "New WIP commit created with message: $custom_message"
            fi
            break
            ;;
        "l")
            # Show git log
            echo "Showing git log:"
            git log --oneline
            ;;
        "?")
            # Show options help
            show_help
            ;;
        *)
            echo "Invalid option. Please enter one of the following: w/q/d/s/m/l/?"
            ;;
    esac
done
