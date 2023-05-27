#walk
execute if score blocks gen < size gen as @e[tag=walker] at @s run function g:gen/walk/walk

#stagger function if taking too many steps
execute if score blocks gen < size gen if score steps gen > 1000 constant run scoreboard players set steps gen -1
execute if score blocks gen < size gen if score steps gen matches -1 run schedule function g:gen/walk/step 1t
#continue as normal
execute if score blocks gen < size gen unless score steps gen matches -1 run function g:gen/walk/step

#end
execute if score blocks gen >= size gen run schedule function g:gen/walk/end 1t