#walk in random direction
scoreboard players operation out rand %= 4 constant
execute if score out rand matches 0 run tp @s ~2 5 ~
execute if score out rand matches 1 run tp @s ~-2 5 ~
execute if score out rand matches 2 run tp @s ~ 5 ~2
execute if score out rand matches 3 run tp @s ~ 5 ~-2
#place tile
execute if block ~ 5 ~ air run function g:gen/walk/tile