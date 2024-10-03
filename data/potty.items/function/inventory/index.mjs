import fs from 'node:fs/promises';
import path from 'node:path';
import { fileURLToPath } from "node:url";

const __dirname = path.dirname(fileURLToPath(import.meta.url))


const before = `
######################################################
# This file is auto-generated. Do NOT edit manually. #
######################################################
\n`

const rootLines = []
for (let i = 0; i < 35; ++i) {
    const slotContent =
    // before + `data modify storage potty:item target set from entity @s Inventory[{Slot:${i}b}]
    // item modify entity @s container.${i} potty.items:gear/gear`
    before + `item replace entity 706f7474-7973-4872-0000-adc200000001 container.0 from entity @s container.${i}
    data modify storage potty:item target set from entity 706f7474-7973-4872-0000-adc200000001 item
    execute at @s as 706f7474-7973-4872-0000-adc200000001 run function potty.items:process/start
    item replace entity @s container.${i} from entity 706f7474-7973-4872-0000-adc200000001 container.0`
    fs.writeFile(path.resolve(__dirname, `slot${i}.mcfunction`), slotContent)

    rootLines.push(`execute if items entity @s container.${i} *[custom_data~{request_lore:true}] run function potty.items:inventory/slot${i}`)
}
fs.writeFile(path.resolve(__dirname, 'test.mcfunction'), before + rootLines.join('\r\n'))
