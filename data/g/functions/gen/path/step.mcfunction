scoreboard players add length path 1
execute as @e[tag=path,tag=!pathed] at @s run function g:gen/path/path

#exit condition
execute unless entity @e[tag=path,tag=!pathed] run schedule function g:gen/path/end 1t

#stagger function if taking too many steps
execute if score steps path matches 9999.. run scoreboard players set steps path -1
execute if score steps path matches -1 run schedule function g:gen/path/step 1t
#continue
execute if entity @e[tag=path,tag=!pathed] unless score steps path matches -1 run function g:gen/path/step
