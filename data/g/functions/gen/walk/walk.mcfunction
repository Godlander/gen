scoreboard players add steps gen 1

#get seeded random number
function g:lib/rand
#walk depending on type
execute if score @s path matches 0 at @s run function g:gen/walk/type/normal
execute if score @s path matches 1 at @s run function g:gen/walk/type/long
execute if score @s path matches 2 at @s run function g:gen/walk/type/room
execute if score @s path matches 3 at @s run function g:gen/walk/type/trees