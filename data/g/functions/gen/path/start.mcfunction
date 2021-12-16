scoreboard players set running path 1
execute as @e[tag=tile] at @s run function g:gen/path/reset
scoreboard players set length path 0
scoreboard players set steps path 0

execute at @e[tag=core] run tag @e[tag=tile,distance=..2.4] add path

schedule function g:gen/path/step 1t