execute store result score dialog_number var run random value 1..7
execute if score dialog_number var matches 1 run tellraw @a ["",[{"text":"[BOSS] ","color":"red"},{"selector":"@s"}], ": How dare you are even trying to take the jungle away from me?"]
execute if score dialog_number var matches 2 run tellraw @a ["",[{"text":"[BOSS] ","color":"red"},{"selector":"@s"}], ": No adventurers before had even hurt me."]
execute if score dialog_number var matches 3 run tellraw @a ["",[{"text":"[BOSS] ","color":"red"},{"selector":"@s"}], ": ", {"text":"Wind up in the sky!","font":"illageralt"}]
execute if score dialog_number var matches 4 run tellraw @a ["",[{"text":"[BOSS] ","color":"red"},{"selector":"@s"}], ": You truly have ", {"text":"some","italic":true}, " skills. You shall be my servant."]
execute if score dialog_number var matches 5 run tellraw @a ["",[{"text":"[BOSS] ","color":"red"},{"selector":"@s"}], ": Give up. ", {"text":"While you still can.","bold":true}]
execute if score dialog_number var matches 6 run tellraw @a ["",[{"text":"[BOSS] ","color":"red"},{"selector":"@s"}], ": I hoped this won't disappoint me..."]
execute if score dialog_number var matches 7 run tellraw @a ["",[{"text":"[BOSS] ","color":"red"},{"selector":"@s"}], ": Your ",{"text": "aword","obfuscated": true}, " is literally ",{"text": "messedup","obfuscated": true},"."]
