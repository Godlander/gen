execute if entity @a[limit=1,distance=..0.5] run scoreboard players set @s aggro 21
particle crit
execute if entity @s[distance=..6] positioned ^ ^ ^0.2 if block ~ ~ ~ air run function g:game/play/enemy/blister/raycast