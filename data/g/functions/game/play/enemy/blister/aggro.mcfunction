
execute facing entity @p[distance=..6] feet run function g:game/play/enemy/blister/raycast

execute facing entity @p[distance=..6] feet rotated ~ 0 if block ^ ^ ^0.25 air run tp @s ^ ^ ^0.25 ~ ~