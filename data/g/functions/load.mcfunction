gamerule maxCommandChainLength 999999

scoreboard objectives add rand dummy
scoreboard objectives add gen dummy
scoreboard objectives add path dummy
scoreboard objectives add game dummy

scoreboard objectives add constant dummy
scoreboard players set 0 constant 0
scoreboard players set 1 constant 1
scoreboard players set 2 constant 2
scoreboard players set 3 constant 3
scoreboard players set 4 constant 4
scoreboard players set 5 constant 5
scoreboard players set 6 constant 6
scoreboard players set 7 constant 7
scoreboard players set 8 constant 8
scoreboard players set 9 constant 9
scoreboard players set 10 constant 10
scoreboard players set 20 constant 20
scoreboard players set 30 constant 30
scoreboard players set 40 constant 40
scoreboard players set 50 constant 50
scoreboard players set 60 constant 60
scoreboard players set 9999 constant 9999
scoreboard players set 16383 constant 16383
scoreboard players set 12345 constant 12345
scoreboard players set 99999 constant 99999
scoreboard players set 131071 constant 131071
scoreboard players set 1103515245 constant 1103515245

execute unless score size gen matches 10.. run scoreboard players set size gen 100
execute unless score paths gen matches 1.. run scoreboard players set paths gen 1

scoreboard objectives add place minecraft.used:minecraft.item_frame
scoreboard objectives add drop minecraft.custom:minecraft.drop

team add red
team modify red color red
team add green
team modify green color green

effect clear @a

say Done