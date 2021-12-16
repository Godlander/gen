summon marker ~ ~1 ~ {Tags:["random"]}
execute store result score seed rand run data get entity @e[type=marker,tag=random,limit=1] UUID[0]
kill @e[type=marker,tag=random]