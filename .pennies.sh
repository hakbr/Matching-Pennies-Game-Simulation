#!/bin/bash

# Number of iterations
num_iterations=1000

# Player states
player1_heads_count=0
player1_tails_count=0
player2_heads_count=0
player2_tails_count=0

# Function to simulate Matching Pennies game
simulate_matching_pennies() {
  local player1_choice=$1
  local player2_choice=$2

  # Update player states based on choices
  case $player1_choice in
    "H") ((player1_heads_count++)) ;;
    "T") ((player1_tails_count++)) ;;
  esac

  case $player2_choice in
    "H") ((player2_heads_count++)) ;;
    "T") ((player2_tails_count++)) ;;
  esac
}

# Run iterations
for ((i = 1; i <= num_iterations; i++)); do
  # Simulate players' choices (heads or tails)
  player1_choice=$((RANDOM % 2))
  player2_choice=$((RANDOM % 2))

  # Translate numeric choices to heads (H) or tails (T)
  case $player1_choice in
    0) player1_choice="H" ;;
    1) player1_choice="T" ;;
  esac

  case $player2_choice in
    0) player2_choice="H" ;;
    1) player2_choice="T" ;;
  esac

  # Simulate the Matching Pennies game
  simulate_matching_pennies "$player1_choice" "$player2_choice"
done

# Display summarized results
echo "Simulated $num_iterations rounds of the Matching Pennies game:"
echo "Player 1 Heads Count: $player1_heads_count, Tails Count: $player1_tails_count"
echo "Player 2 Heads Count: $player2_heads_count, Tails Count: $player2_tails_count"
