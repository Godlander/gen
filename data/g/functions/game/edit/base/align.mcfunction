#align to 2x2 grid
summon marker ~ 5 ~ {Tags:["place"]}
execute as @e[tag=place] store result entity @s Pos[0] double 2 run data get entity @s Pos[0] 0.5
execute as @e[tag=place] store result entity @s Pos[2] double 2 run data get entity @s Pos[2] 0.5

#if place
execute at @e[tag=place] unless block ~ 5 ~ air run fill ~1 6 ~1 ~ 6 ~ snow keep

#if remove
#execute at @e[tag=place] if block ~ 6 ~ light_blue_stained_glass positioned ~1 6 ~1 run particle minecraft:effect ~ 6.3 ~ 0.6 0.2 0.6 1 40
execute at @e[tag=place] if block ~ 6 ~ light_blue_stained_glass run fill ~1 6 ~1 ~ 6 ~ air replace light_blue_stained_glass

#recalculate path
function g:gen/path/start