scoreboard players remove amount path 1
execute positioned 0 5 0 summon marker run function g:gen/walk/walkers/new
execute if score amount path >= 0 constant run function g:gen/walk/walkers/summon