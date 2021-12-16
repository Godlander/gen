#finish map generation
scoreboard players set gen gen 1
scoreboard players reset seed rand

#align walkers
execute as @e[tag=walker] at @s positioned as @e[tag=tile,distance=..3,sort=nearest,limit=1] run tp @s ~ ~ ~
#place core
execute as @e[tag=walker,sort=random,limit=1] at @s positioned ~1 ~ ~1 run function g:gen/walk/core
#place spawns
execute at @e[tag=core] as @e[tag=walker,distance=6..] run tag @s add spawn
#execute unless score steps gen matches -1 at @e[tag=spawn] run fill ~-1 5 ~-1 ~ 5 ~ minecraft:red_terracotta
#furthest core activates first
execute unless score steps gen matches -1 at @e[tag=core] run tag @e[tag=spawn,sort=furthest,limit=1] add active
#execute unless score steps gen matches -1 at @e[tag=active] run fill ~-1 5 ~-1 ~ 5 ~ minecraft:redstone_block

#if a spawn wasnt placed properly
execute store result score walkers gen if entity @e[tag=spawn]
scoreboard players remove paths gen 1
execute if score walkers gen < paths gen run scoreboard players set steps gen -1
#reset
execute if score steps gen matches -1 if score fails gen matches ..4 run tellraw @a {"text":"Bad map, regenerating.","color":"red"}
execute if score steps gen matches -1 if score fails gen matches ..5 run scoreboard players add fails gen 1
execute if score steps gen matches -1 if score fails gen matches ..5 run schedule function g:gen/walk/start 1t
execute if score steps gen matches -1 if score fails gen matches 6 run tellraw @a {"text":"Bad map, generator gives up after failing more than 5 times.\nTry decreasing number of paths or increasing map size.","color":"red"}

#pathing
execute unless score gen gen matches -1 run tellraw @a {"text":"Finished, attempting to create path.","color":"green"}
execute unless score gen gen matches -1 run schedule function g:gen/path/start 1t

#clean up structure voids
execute unless score steps gen matches -1 at @e[type=!player] run fill ~-1 0 ~-1 ~1 10 ~1 air replace minecraft:structure_void
