# ![logo](https://raw.githubusercontent.com/azerothcore/azerothcore.github.io/master/images/logo-github.png) AzerothCore
## mod-emblem-transfer
### This is a module for [AzerothCore](http://www.azerothcore.org)
- Latest build status with azerothcore: [![Build Status](https://github.com/azerothcore/mod-emblem-transfer/workflows/core-build/badge.svg?branch=master&event=push)](https://github.com/azerothcore/mod-emblem-transfer)


## Description

Allows a player to transfer emblems (frost, triump, conquest) from one character to another **within the same account**. A configurable penalty can be applied (default: 10%) to the transfered amount.


## How to use ingame

1. Walk to the npc and interact with it.
2. Select the type of emblem you want to transfer.
3. Select the character you want to transfer to.
4. Enter the amount of emblems.
5. Profit!

## Requirements

- AzerothCore v1.0.1+

Due to the uniquiness of the module you will get this message on the worldconsole, but nothing is broken.
It is due to the npc not exactly having a gossip menu in the database, the script handles the gossip menu because of the additional locales.

![image](https://user-images.githubusercontent.com/16887899/154384533-85fe6663-5aef-4b9e-b7b5-e494cc693033.png)

Please add the adjustment to the conf to have that error message not show up:
```
#    Creatures.CustomIDs
#        Description: The list of custom creatures with gossip dialogues hardcoded in core,
#                     divided by "," without spaces.
#                     It is implied that you do not use for these NPC dialogs data from "gossip_menu" table.
#                     Server will skip these IDs during the definitions validation process.
#        Example:     Creatures.CustomIDs = "190010,55005,999991,25462,98888,100000" - Npcs for Transmog, Guild-zone, 1v1-arena modules
#                                                                               Skip Dk Module, Racial Trait Swap Modules
#        Default:     ""

Creatures.CustomIDs = "190010,55005,999991,25462,98888,100000"
```

## Installation

```
1) Simply place the module under the `modules` directory of your AzerothCore source. 
2) Import the SQL manually to the right Database (auth, world or characters).
3) Re-run cmake and launch a clean build of AzerothCore.
```

## Edit module configuration (optional)

If you need to change the module configuration, go to your server configuration folder (where your `worldserver` or `worldserver.exe` is), copy `emblem_transfer.conf.dist` to `emblem_transfer.conf` and edit that new file.


## Credits

- [ZeegCL](https://github.com/ZeegCL) (author)
- BarbzYHOOL and Talamortis (best guys)
- AzerothCore: [repository](https://github.com/azerothcore) - [website](http://azerothcore.org/) - [discord chat community](https://discord.gg/PaqQRkd)
