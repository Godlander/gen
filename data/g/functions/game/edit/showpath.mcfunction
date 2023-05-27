execute if block ~ 5 ~ air run kill @s
execute if entity @e[tag=core,distance=..2.5] run kill @s

execute at @s[tag=ground] positioned ~ ~0.2 ~ run particle minecraft:dust 1 0.5 0.2 2.5
execute at @s[tag=ground] run function g:game/path/ground/align
execute at @s[tag=ground] run tp @s ^ ^ ^-0.24

execute at @s[tag=air] positioned ~ ~5 ~ run particle minecraft:dust 0.2 1 0.3 1.5
execute at @s[tag=air] run function g:game/path/air/align
execute at @s[tag=air] run tp @s ^ ^ ^-0.24