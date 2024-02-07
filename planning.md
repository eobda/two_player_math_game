# Two Player Math Game
## Task 1: Extract Nouns for Classes
* game
  * turn
  * score
* players
  * life / lives
* question
  * answer

## Task 2: Write their roles
### game
This class tracks which player's turn it is (state). It also keeps track of the score to check whether or not someone has won. If a player gets an answer wrong, it subtracts their score (behavior).

### player
This class starts with 3 lives (variable) and keeps track of the individual player's remaining number of lives.

### question
This class generates a question and one true answer.