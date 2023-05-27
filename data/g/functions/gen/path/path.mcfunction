scoreboard players add steps path 1
scoreboard players operation @s path = length path
tag @s add pathed
execute unless blocks ~-0.5 7 ~-0.5 ~0.5 7 ~0.5 0 0 0 masked run tag @s add blocked

execute if blocks ~-0.5 7 ~-0.5 ~0.5 7 ~0.5 0 0 0 masked positioned ~2 ~ ~ as @e[tag=tile,tag=!pathed,distance=..1] at @s run function g:gen/path/go/x
execute if blocks ~-0.5 7 ~-0.5 ~0.5 7 ~0.5 0 0 0 masked positioned ~-2 ~ ~ as @e[tag=tile,tag=!pathed,distance=..1] at @s run function g:gen/path/go/-x
execute if blocks ~-0.5 7 ~-0.5 ~0.5 7 ~0.5 0 0 0 masked positioned ~ ~ ~2 as @e[tag=tile,tag=!pathed,distance=..1] at @s run function g:gen/path/go/z
execute if blocks ~-0.5 7 ~-0.5 ~0.5 7 ~0.5 0 0 0 masked positioned ~ ~ ~-2 as @e[tag=tile,tag=!pathed,distance=..1] at @s run function g:gen/path/go/-z