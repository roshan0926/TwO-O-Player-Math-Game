# Both players start with 3 lives. They lose a life 
# if they mis-answer a question. At the end of every turn, 
#   the game should output the new scores for both players, s
#   o players know where they stand.

# The game doesn’t end until one of the 
# players loses all their lives. At this
#  point, the game should announce who won 
#  and what the other player’s score is.

# player, lives, question, turn, score, lose
# will be a player 1 and player 2 each have 3 lives and will recieve random questions

## game logic
# if they answer a question correct their score will go up by one if they answer the question wrong
#   their lives will go donw by one. they each take turns one by one answering questions. If a player loses all 3 lives,
#   they lose and the winner will be printed along with their score.