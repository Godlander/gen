scoreboard players add walkers gen 1
summon marker 0 5 0 {Tags:["walker","new"],CustomName:'{"text":"walker"}'}
scoreboard players operation @e[tag=walker,tag=new] gen = type gen
scoreboard players operation @e[tag=walker,tag=new] gen %= 10 constant
scoreboard players operation type gen /= 10 constant
tag @e[tag=walker,tag=new] remove new
execute if score walkers gen < paths gen run function g:gen/walk/walkers