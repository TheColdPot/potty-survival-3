scoreboard objectives add var dummy
scoreboard objectives add persist_var dummy
scoreboard objectives add animation_frame dummy

# scoreboard objectives add constant dummy


scoreboard players set #UNIT_K var 1000
scoreboard players set #UNIT_M var 1000000
scoreboard players set #UNIT_B var 1000000000

scoreboard players set #HUNDRED var 100
scoreboard players set #3 var 3
scoreboard players set #THREE var 3
scoreboard players set #5 var 5
scoreboard players set #FIVE var 5
scoreboard players set #10 var 10
scoreboard players set #TEN var 10
scoreboard players set #20 var 20
scoreboard players set #TWENTY var 20
scoreboard players set #15 var 15
scoreboard players set #FIFTEEN var 15
scoreboard players set #INT_MAX var 2147483647
scoreboard players set #SIGN_NEGATIVE var -1
scoreboard players set #0 var 0
scoreboard players set #ZERO var 0
scoreboard players set #SIGN_POSITIVE var 1

scoreboard objectives add timer dummy
scoreboard objectives add uid dummy

function potty.combat:init
function potty.items:init

scoreboard players add #reload_count persist_var 1
# title @a subtitle [{"text":"This is CUMU Reload #","color":"gray"}, {"score": {"name": "#reload_count", "objective": "persist_var"}}, "!"]
# title @a title "RELOAD!"
