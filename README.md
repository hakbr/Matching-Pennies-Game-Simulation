# Matching-Pennies-Game-Simulation
A simple two-player zero-sum game in which each player simultaneously chooses either heads (H) or tails (T).


This bash script simulates the Matching Pennies game, a two-player zero-sum game where each player simultaneously chooses either heads (H) or tails (T). The payoff depends on whether the choices match or not.

## Usage

Download the script

Make the script executable.

chmod +x .pennies.sh

Run the script.

./.pennies.sh

View the summarized results, including the count of heads and tails for each player.

Script Details

    The script simulates a specified number of rounds of the Matching Pennies game.
    Each player independently chooses heads (H) or tails (T) in each round.
    The game determines the winner based on whether the choices match or not.
    The results display the count of heads and tails for each player.

Customize

Feel free to modify the script or parameters based on your specific needs or explore other game scenarios.

For example, you can change the number of iterations:
```bash
# Number of iterations
num_iterations=1000

You can adjust the script to simulate different games or scenarios in game theory by changing the logic within the simulate_matching_pennies function.
