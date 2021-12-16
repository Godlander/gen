execute if block ~ 5 ~ waxed_copper_block rotated 90 0 positioned ^ ^ ^1.5 run function g:game/path/ground/align1
execute if block ~ 5 ~ waxed_oxidized_copper rotated 180 0 positioned ^ ^ ^1.5 run function g:game/path/ground/align1
execute if block ~ 5 ~ waxed_exposed_copper rotated -90 0 positioned ^ ^ ^1.5 run function g:game/path/ground/align1
execute if block ~ 5 ~ waxed_weathered_copper rotated 0 0 positioned ^ ^ ^1.5 run function g:game/path/ground/align1

execute if block ~ 5 ~ raw_copper_block facing entity @e[tag=core] feet positioned ^ ^ ^1.5 facing entity @s feet positioned as @s run tp @s ~ 6 ~ ~ 0