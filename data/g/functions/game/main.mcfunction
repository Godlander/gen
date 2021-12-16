#execute as @a[gamemode=!creative] run function g:game/edit/inventory

#place
#only one base can be placed at a time
execute as @a[scores={place=1..},limit=1] at @s positioned ^ ^ ^1 at @e[type=item_frame,limit=1,sort=nearest] run function g:game/edit/base/place
kill @e[type=item_frame]

#showpath
execute if score showpath game matches 60.. run scoreboard players set showpath game 0
execute if score showpath game matches 0 at @e[tag=spawn,tag=active] run summon marker ~ 6 ~ {Tags:["showpath","ground"],Rotation:[0f,-90f]}
execute if score showpath game matches 30 at @e[tag=spawn,tag=active] run summon marker ~ 6 ~ {Tags:["showpath","air"],Rotation:[0f,-90f]}
execute as @e[tag=showpath] at @s run function g:game/edit/showpath
scoreboard players add showpath game 1

#testxdxd
#execute as @e[tag=enemy] run function g:game/play/enemy/main
#execute as @e[tag=tower] run function g:game/play/tower/main