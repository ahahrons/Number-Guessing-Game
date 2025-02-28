#!/bin/bash

# Connect to the database
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

# Generate a random number between 1 and 1000
SECRET_NUMBER=$((RANDOM % 1000 + 1))

# Get username
echo "Enter your username:"
read USERNAME

# Check if username exists in database
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")

# If user doesn't exist
if [[ -z $USER_ID ]]
then
  # Add the new user
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  
  # Get the new user_id
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
  
  # Welcome message for new users
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  # Get user stats
  USER_STATS=$($PSQL "SELECT COUNT(*), MIN(number_of_guesses) FROM games WHERE user_id=$USER_ID")
  
  # Parse the stats
  echo "$USER_STATS" | while IFS="|" read GAMES_PLAYED BEST_GAME
  do
    # Welcome message for returning users
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  done
fi

# Start the game
echo "Guess the secret number between 1 and 1000:"
read GUESS
NUMBER_OF_GUESSES=1

# Loop until the correct number is guessed
while [[ $GUESS != $SECRET_NUMBER ]]
do
  # Check if input is an integer
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
  else
    # Compare guess with secret number
    if [[ $GUESS -gt $SECRET_NUMBER ]]
    then
      echo "It's lower than that, guess again:"
    else
      echo "It's higher than that, guess again:"
    fi
  fi
  
  # Get next guess
  read GUESS
  
  # Only increment guess count if the input was a valid integer
  if [[ $GUESS =~ ^[0-9]+$ ]]
  then
    ((NUMBER_OF_GUESSES++))
  fi
done

# Insert the game result
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(user_id, number_of_guesses) VALUES($USER_ID, $NUMBER_OF_GUESSES)")

# Congratulate the user
echo "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"# Fix: Proper integer validation
# Feature: Random number generation between 1-1000
# Refactor: Improved game loop
# Chore: Properly formatted output messages
# Test: Validated user input handling
