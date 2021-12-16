execute positioned ~ ~-3 ~ at @e[tag=ogtile,distance=..2.1,sort=nearest,limit=1] positioned ^ ^ ^1 facing entity @s feet rotated ~ 0 positioned as @s run tp @s ^ ^ ^-0.1 ~180 0

function g:lib/rand
scoreboard players operation rand rand %= 20 const
execute if score rand rand matches 0 at @s facing entity @p[distance=..10] feet run function g:game/play/enemy/splotch/raycast