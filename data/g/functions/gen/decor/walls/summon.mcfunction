execute positioned ~2 ~ ~ if block ~ 5 ~ air unless entity @e[tag=wall,distance=..1] run summon marker ~ 6.5 ~ {Tags:["wall","west"]}
execute positioned ~-2 ~ ~ if block ~ 5 ~ air unless entity @e[tag=wall,distance=..1] run summon marker ~ 6.5 ~ {Tags:["wall","east"]}
execute positioned ~ ~ ~2 if block ~ 5 ~ air unless entity @e[tag=wall,distance=..1] run summon marker ~ 6.5 ~ {Tags:["wall","north"]}
execute positioned ~ ~ ~-2 if block ~ 5 ~ air unless entity @e[tag=wall,distance=..1] run summon marker ~ 6.5 ~ {Tags:["wall","south"]}

execute positioned ~2 ~ ~ if block ~ 5 ~ air as @e[tag=wall,distance=..1] run tag @s add west
execute positioned ~-2 ~ ~ if block ~ 5 ~ air as @e[tag=wall,distance=..1] run tag @s add east
execute positioned ~ ~ ~2 if block ~ 5 ~ air as @e[tag=wall,distance=..1] run tag @s add north
execute positioned ~ ~ ~-2 if block ~ 5 ~ air as @e[tag=wall,distance=..1] run tag @s add south