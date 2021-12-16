#copy layer on first complete for flying
execute if score gen gen matches 1 as @e[tag=tile] at @s run clone ~-0.5 5 ~-0.5 ~0.5 5 ~0.5 ~-0.5 4 ~-0.5
#output
execute if score gen gen matches 1 run tellraw @a [{"text":"Path created with ","color":"gray"},{"text":"longest distance: ","color":"gold"},{"score":{"name":"length","objective":"path"},"color":"green"}]
#decor
execute if score gen gen matches 1 run schedule function g:gen/decor/start 1t

#resolve base placement
scoreboard players set validpaths gen 0
execute at @e[tag=spawn] if entity @e[tag=tile,distance=..2.1,tag=pathed,tag=!blocked] run scoreboard players add validpaths gen 1
execute if score validpaths gen = paths gen at @e[tag=place] if block ~ 6 ~ snow run function g:game/edit/base/resolve
execute if score validpaths gen < paths gen at @e[tag=place] run function g:game/edit/base/reject
kill @e[tag=place]

#end path gen
scoreboard players set gen gen 2
scoreboard players set running path 0
scoreboard players set steps path -2
#fix path around core
execute at @e[tag=core] run fill ~-1.5 4 ~-1.5 ~1.5 5 ~1.5 raw_copper_block replace #copper