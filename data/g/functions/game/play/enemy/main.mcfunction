execute if entity @s[tag=blemish,scores={aggro=..0}] at @s run function g:game/play/enemy/blemish/main
execute if entity @s[tag=blemish,scores={aggro=20}] at @s run function g:game/play/enemy/blemish/aggro
execute if entity @s[tag=blot,scores={aggro=..0}] at @s run function g:game/play/enemy/blot/main
execute if entity @s[tag=blot,scores={aggro=20}] at @s run function g:game/play/enemy/blot/aggro
execute if entity @s[tag=bruise,scores={aggro=..0}] at @s run function g:game/play/enemy/bruise/main
execute if entity @s[tag=bruise,scores={aggro=20}] at @s run function g:game/play/enemy/bruise/aggro
execute if entity @s[tag=blotch,scores={aggro=..0}] at @s run function g:game/play/enemy/blotch/main
execute if entity @s[tag=blotch,scores={aggro=20}] at @s run function g:game/play/enemy/blotch/aggro
execute if entity @s[tag=splotch,scores={aggro=..0}] at @s run function g:game/play/enemy/splotch/main
execute if entity @s[tag=splotch,scores={aggro=20}] at @s run function g:game/play/enemy/splotch/aggro
execute if entity @s[tag=blister,scores={aggro=..0}] at @s run function g:game/play/enemy/blister/main
execute if entity @s[tag=blister,scores={aggro=20}] at @s run function g:game/play/enemy/blister/aggro
execute if entity @s[tag=cyst,scores={aggro=..0}] at @s run function g:game/play/enemy/cyst/main
execute if entity @s[tag=cyst,scores={aggro=20}] at @s run function g:game/play/enemy/cyst/aggro
execute if entity @s[tag=cicatrix,scores={aggro=..0}] at @s run function g:game/play/enemy/cicatrix/main
execute if entity @s[tag=cicatrix,scores={aggro=20}] at @s run function g:game/play/enemy/cicatrix/aggro

scoreboard players remove @s aggro 1

execute if score @s health matches ..0 run function g:game/play/enemy/death