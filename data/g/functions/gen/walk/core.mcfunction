tag @s add core
tp @s ~ ~ ~
kill @e[distance=0.5..2.4,tag=tile]
execute positioned ~-1 5.6 ~-1 run summon marker ~ 5.6 ~ {Tags:["tile"],CustomName:'{"text":"tile","color":"gray"}'}
execute positioned ~-1 5.6 ~1 run summon marker ~ 5.6 ~ {Tags:["tile"],CustomName:'{"text":"tile","color":"gray"}'}
execute positioned ~1 5.6 ~-1 run summon marker ~ 5.6 ~ {Tags:["tile"],CustomName:'{"text":"tile","color":"gray"}'}
execute positioned ~1 5.6 ~1 run summon marker ~ 5.6 ~ {Tags:["tile"],CustomName:'{"text":"tile","color":"gray"}'}
fill ~-2 6 ~-2 ~1 9 ~1 structure_void
fill ~-3 6 ~-3 ~2 9 ~2 sandstone replace air
fill ~-0.6 5 ~-0.6 ~0.6 5 ~0.6 iron_block