#sanity check
execute unless score size gen matches 1.. run scoreboard players set size gen 50
execute unless score paths gen matches 1.. run scoreboard players set paths gen 1

#if no seed
execute unless score seed rand = seed rand run function g:lib/seed
execute if score seed rand matches 0 run function g:lib/seed

#text
tellraw @a [{"text":"Generating dungeon with ","color":"gray"},{"text":"size: ","color":"gold"},{"score":{"name":"size","objective":"gen"},"color":"green"},{"text":" and ","color":"gray"},{"text":"paths: ","color":"gold"},{"score":{"name":"paths","objective":"gen"},"color":"green"}]
tellraw @a [{"text":"Seed: ","color":"gold"},{"score":{"name":"seed","objective":"rand"},"color":"green"}]

#spawn walkers
scoreboard players operation amount path = paths gen
scoreboard players operation type path = type gen
function g:gen/walk/walkers/summon

#start walk
scoreboard players set blocks gen 0
scoreboard players set steps gen 0
scoreboard players operation rand rand = seed rand
function g:gen/walk/step