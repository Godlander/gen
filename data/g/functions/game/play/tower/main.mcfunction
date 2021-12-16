execute as @s[tag=visual] unless score @s health matches 1.. at @s run function g:game/play/tower/face
execute if score @s health matches 0.. run scoreboard players remove @s health 1
execute if score @s health matches 0 run data merge entity @s {Glowing:0b}
execute if score @s health matches 0 run scoreboard players reset @s health
tag @s remove new