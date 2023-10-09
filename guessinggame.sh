#!/bin/bash

# Function to count the number of files in the current directory
count_files() {
    local count=$(ls -l | grep -v ^d | wc -l)
    echo $count
}

# Main function for the guessing game
guessing_game() {
    local files_in_directory=$(count_files)

    while true; do
        read -p "Guess the number of files in the current directory: " user_guess

        if [[ $user_guess -lt $files_in_directory ]]; then
            echo "Too low! Try again."
        elif [[ $user_guess -gt $files_in_directory ]]; then
            echo "Too high! Try again."
        else
            echo "Congratulations! You guessed correctly."
            break
        fi
    done
}

# Run the guessing game
guessing_game
