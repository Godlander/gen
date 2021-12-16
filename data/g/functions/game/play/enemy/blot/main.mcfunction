execute at @e[tag=tile,distance=..2.1,sort=nearest,limit=1] positioned ^ ^ ^1 facing entity @s feet rotated ~ 0 positioned as @s run tp @s ^ ^ ^-0.18 ~180 0

function g:lib/rand
scoreboard players operation rand rand %= 20 const
execute if score rand rand matches 0 at @s facing entity @p[distance=..6] feet run function g:game/play/enemy/blot/raycast
