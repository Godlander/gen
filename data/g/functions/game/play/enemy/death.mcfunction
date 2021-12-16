execute if score corpseexplosion perk matches 1 run scoreboard players operation @s maxhealth /= 4 constant
execute if score corpseexplosion perk matches 1 at @s run scoreboard players operation @e[tag=enemy,distance=..3] damage = @s maxhealth
execute if score corpseexplosion perk matches 1 at @s as @e[tag=enemy,distance=..3] run function g:game/play/enemy/hurt
kill @s