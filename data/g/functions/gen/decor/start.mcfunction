tellraw @a [{"text":"Building Walls...","color":"gray"}]
execute at @e[tag=tile] run function g:gen/decor/walls/summon
execute as @e[tag=wall] at @s run function g:gen/decor/walls/walls

execute at @e[tag=tile] run function g:gen/decor/floor/floor

#tellraw @a [{"text":"Placing Decor...","color":"green"}]