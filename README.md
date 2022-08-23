# RE2 Parachute Script
Add 14 tint of Parachute to your fivem Qb Server


## Dependencies
- qb-core - to make Item Usable



Config


Add this item to the qb-core -> shared -> item.lua
```lua

	-- Re2 Parachute

	['rainbow-parachute'] 			   		 = {['name'] = 'rainbow-parachute', 				['label'] = 'Rainbow Chute', 				['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'parachute.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The sky is the limit! Woohoo!'},
	['red-parachute'] 			   		 	 = {['name'] = 'red-parachute', 					['label'] = 'Red Chute', 					['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'parachute.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The sky is the limit! Woohoo!'},
	['seaside-parachute'] 			   		 = {['name'] = 'seaside-parachute', 				['label'] = 'Seaside Stripes Chute', 		['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'parachute.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The sky is the limit! Woohoo!'},
	['widow-parachute'] 			   		 = {['name'] = 'widow-parachute', 					['label'] = 'Widowmaker Chute', 			['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'parachute.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The sky is the limit! Woohoo!'},
	['patriot-parachute'] 			   		 = {['name'] = 'patriot-parachute', 				['label'] = 'Patriot Chute', 				['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'parachute.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The sky is the limit! Woohoo!'},
	['blue-parachute'] 			   		 	 = {['name'] = 'blue-parachute', 					['label'] = 'Blue Chute', 					['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'parachute.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The sky is the limit! Woohoo!'},
	['black-parachute'] 			   		 = {['name'] = 'black-parachute', 					['label'] = 'Black Chute', 					['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'parachute.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The sky is the limit! Woohoo!'},
	['hornet-parachute'] 			   		 = {['name'] = 'hornet-parachute', 					['label'] = 'Hornet Chute', 				['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'parachute.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The sky is the limit! Woohoo!'},
	['airforce-parachute'] 			   		 = {['name'] = 'airforce-parachute', 				['label'] = 'Air Force Chute', 				['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'parachute.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The sky is the limit! Woohoo!'},
	['desert-parachute'] 			   		 = {['name'] = 'desert-parachute', 					['label'] = 'Desert Chute', 				['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'parachute.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The sky is the limit! Woohoo!'},
	['shadow-parachute'] 			   		 = {['name'] = 'shadow-parachute', 					['label'] = 'Shadow Chute', 				['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'parachute.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The sky is the limit! Woohoo!'},
	['highalt-parachute'] 			   		 = {['name'] = 'highalt-parachute', 				['label'] = 'High Altitude Chute', 			['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'parachute.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The sky is the limit! Woohoo!'},
	['airborn-parachute'] 			   		 = {['name'] = 'airborn-parachute', 				['label'] = 'Airborne Chute', 				['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'parachute.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The sky is the limit! Woohoo!'},
	['sunrise-parachute'] 			   		 = {['name'] = 'sunrise-parachute', 				['label'] = 'Sunrise Chute', 				['weight'] = 30000, 	['type'] = 'item', 		['image'] = 'parachute.png', 			['unique'] = true, 	    ['useable'] = true, 	['shouldClose'] = true,    ['combinable'] = nil,   ['description'] = 'The sky is the limit! Woohoo!'},


```
replace this in qb-shop -> config.lua at line 319
```lua

["leisureshop"] = {
        [1] = {
            name = "binoculars",
            price = 50,
            amount = 50,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "diving_gear",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "rainbow-parachute",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "red-parachute",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [5] = {
            name = "seaside-parachute",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [6] = {
            name = "widow-parachute",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [7] = {
            name = "patriot-parachute",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [8] = {
            name = "blue-parachute",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [9] = {
            name = "black-parachute",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [10] = {
            name = "hornet-parachute",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [11] = {
            name = "airforce-parachute",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [12] = {
            name = "desert-parachute",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [13] = {
            name = "shadow-parachute",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [14] = {
            name = "highalt-parachute",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [15] = {
            name = "airborn-parachute",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
        [16] = {
            name = "sunrise-parachute",
            price = 2500,
            amount = 10,
            info = {},
            type = "item",
            slot = 3,
        },
    },
```


## ScreenShots

![Rainbow](https://cdn.discordapp.com/attachments/910613937555406868/1011528397614223371/unknown.png)
![Red](https://cdn.discordapp.com/attachments/910613937555406868/1011528398029455460/unknown.png)
![SeaSide](https://cdn.discordapp.com/attachments/910613937555406868/1011528398427922452/unknown.png)
![Widowmaker](https://i.imgur.com/gj32aJc.png)
![Patriot](https://i.imgur.com/215Evcp.png)
![Blue](https://i.imgur.com/F1sofjx.png)
![Black](https://i.imgur.com/yIjBGj1.png)
![Hornet](https://i.imgur.com/SSXClOF.png)
![airforce](https://vespura.com/hi/i/22-02-19_18-48-19_id3I3_4765.png)
![Desert](https://vespura.com/hi/i/22-02-19_18-48-53_Qx6dq_4766.png)
![Shadow](https://vespura.com/hi/i/22-02-19_18-49-28_P2gbN_4767.png)
![High Altitude](https://vespura.com/hi/i/22-02-19_18-49-57_vGxux_4768.png)
![Airborne](https://vespura.com/hi/i/22-02-19_18-50-50_nUuKw_4770.png)
![Sunrise](https://vespura.com/hi/i/22-02-19_18-51-25_zgGT3_4771.png)
