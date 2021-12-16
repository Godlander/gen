scoreboard players operation rand rand %= 131071 constant
scoreboard players add rand rand 1
scoreboard players operation rand rand *= 16383 constant

scoreboard players operation out rand = rand rand