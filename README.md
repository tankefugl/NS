# Natural Selection v3.2.1a

[![Build Status](https://travis-ci.org/ENSL/NS.svg?branch=develop)](https://travis-ci.org/ENSL/NS)

This is a complete rebuild of the game [Natural Selection] for Windows and Linux. It includes fixes by fmoraw, Bacsu, puzl and others mostly just to make this source code build and run on all platforms.

## Downloads

First you need NS 3.2 full installation. Download from UWE website or from here [here](https://www.ensl.org/files/client/ns_install_v32.exe)

You can find releases [here](https://github.com/ENSL/NS/releases).

Download latest: [ns_v321b_patch.zip](https://github.com/ENSL/NS/releases/download/v3.2.1b/ns_v321b_patch.zip)

Remember to extract them to your Half-Life/ns directory. It should replace the existing files.

## Changes

In order to make this game work for linux the old half-life engine files were replaced with the newer ones. In addtion some changes are accounted for the use of an acient glibc library. Some changes to the game itself have been made and these include:

- The ChatPanel has been replaced in favor of the old hl chat.
- The observatory has now a spherical detection like the sensory chamber
- Removed special NS gamma since it is windows only

The plan is to bring the chat and the gamma back when a cross-platfrom solution can be achieved.

## Bugs

- Chat input is not visible while spectating
- [sg reload bug] 
- [FPS_Effects] FPS dependant fire rates and player physics 
- gorge's view rotates when he drops a structure from the popup menu?
- The background of text in the menu or in popups does not look nice possible realted to the `special ns gamma`.
- Flashing available alien upgrade icons (defense, movement and sensory) tend to disappear when a player dies and respawns. The icons won't appear until the alien chooses an upgrade.
- func_train and func_tracktrain entities don't reset to their original positions when a round has ended
- windows server works only with the hlds tool

If you find more please report them!

## Compiling

First. you need some libraries. On Ubuntu it is:

```sh
apt-get install build-essential git gdb gcc-multilib g++-multilib libc6-i386 libcurl4-openssl-dev:i386 libpng12-dev:i386
``` 

For windows compilation should be working if you have VS2010 installed.

Then you will need to get the files:
```sh
git clone https://github.com/fmoraw/NS.git
``` 

Then to build `` and use `make hl_cll` for the client and `make ns` for the server.

```sh
cd NS/main/source/linux
```

For client use `make hl_cll` and for server use `make ns`


If you get the this error when running the app: `Fatal Error - could not load library (client.so)`, With a high chance it is because of some `UNDEFINED SYMBOLS` in the shared library. But you can check this with this command:

``` sh 
ldd -r -d client.so
``` 

Make sure you have vgui.so copied to cl_dll folder too on Linux.

## Debugging

If you want to debug:
```sh
LD_LIBRARY_PATH=".:$LD_LIBRARY_PATH" gdb ./hl_linux r -game ns -dev -steam
``` 
Due to the new engine and the nature of Linux I had to make a lot of changes! You can find them with grep -Ril `@Linux`.

For MacOS & lldb:
```
DYLD_LIBRARY_PATH=".:$DYLD_LIBRARY_PATH" /Applications/Xcode.app/Contents/Developer/usr/bin/lldb -- ./hl_osx r -game ns -dev -steam -windowed
```
Have to use XCode's lldb to get around https://stackoverflow.com/a/33589760 (Lack of environment variables). `-windowed` as windowed mode makes it easier to deal with crashes on MacOS.

### Hosting a server

Since servers are really rare at this point in time here is a tutorial how to set up an [Natural Selection] server with [hlds]. 

1. Follow these steps: https://developer.valvesoftware.com/wiki/SteamCMD
2. Copy the [Natural Selection] directory to steamcmd/servers/
3. Run the game : 
```sh
./hlds_run -game ns -autoupdate +map ns_eclipse + sv_secure 1 + port 27015 + ip 127.0.0.1 +hostname "Natural Selection" +maxplayers 32
``` 
If you are behind a NAT(Router) make sure to open at least those ports: 
- 27015 UDP (game transmission, pings) 
- 26900 UDP (VAC service) -- automatically increments if used in case of additional server processes

`Under no circumstances expose your host to the internet!!!` For more information follow [this link](https://developer.valvesoftware.com/wiki/Half-Life_Dedicated_Server).

In order to check if you server is connected to the steam servers copy the following url in your browser and replace `<your IP address>` with your external ip:
`http://api.steampowered.com/ISteamApps/GetServersAtAddress/v0001?addr=<your IP address>&format=json`

There is an updated version of metamod called [metamodp](http://metamod-p.sourceforge.net/). Since players are also pretty rare you might want to install [rcbot] and therefore you have to download those files:
 - [rcbot without dlls](http://filebase.bots-united.com/index.php?act=download&id=210)
 - [rcbot linux dlls](http://filebase.bots-united.com/index.php?act=download&id=428)

### Usefull links

* [Usefull collection of ns files server addons, maps and erverything ](http://www.brywright.co.uk/downloads/files/index.php?dir=natural-selection/)
* [Great collection of ns guides/tutorials](http://www.naturalns.clanservers.com/forums/index.php?topic=5.0)
*  [rcbot downloads](http://filebase.bots-united.com/index.php?act=category&id=19)
*  [dillinger.io markdown editor](http://dillinger.io/)

   [Natural Selection]: <http://unknownworlds.com/ns/>
   [Unknownworlds Entertainment]:<https://github.com/unknownworlds/NS>
   [ns_patch_v321a.7z]:<https://github.com/fmoraw/NS/blob/linux/ns_patch_v321a.7z?raw=true>
   [FPS_Effects]:<http://wiki.sourceruns.org/wiki/FPS_Effects>
   [Steam]: <http://store.steampowered.com/about/>
   [sg reload bug]:<https://github.com/unknownworlds/NS/issues/5>
   [hlds]:<https://developer.valvesoftware.com/wiki/Half-Life_Dedicated_Server>
   [rcbot]:<http://filebase.bots-united.com/index.php?act=category&id=19>


Many thanks to GiGaBiTe.


Half Life 1 SDK LICENSE
=======================

https://github.com/ValveSoftware/halflife/blob/master/README.md

You may, free of charge, download and use the SDK to develop a modified Valve game running on the Half-Life engine. You may distribute your modified Valve game in source and object code form, but only for free. Terms of use for Valve games are found in the Steam Subscriber Agreement located here: http://store.steampowered.com/subscriber_agreement/

You may copy, modify, and distribute the SDK and any modifications you make to the SDK in source and object code form, but only for free. Any distribution of this SDK must include this license.txt and third_party_licenses.txt.

DISCLAIMER OF WARRANTIES. THE SOURCE SDK AND ANY OTHER MATERIAL DOWNLOADED BY LICENSEE IS PROVIDED “AS IS”. VALVE AND ITS SUPPLIERS DISCLAIM ALL WARRANTIES WITH RESPECT TO THE SDK, EITHER EXPRESS OR IMPLIED, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT, TITLE AND FITNESS FOR A PARTICULAR PURPOSE.

LIMITATION OF LIABILITY. IN NO EVENT SHALL VALVE OR ITS SUPPLIERS BE LIABLE FOR ANY SPECIAL, INCIDENTAL, INDIRECT, OR CONSEQUENTIAL DAMAGES WHATSOEVER (INCLUDING, WITHOUT LIMITATION, DAMAGES FOR LOSS OF BUSINESS PROFITS, BUSINESS INTERRUPTION, LOSS OF BUSINESS INFORMATION, OR ANY OTHER PECUNIARY LOSS) ARISING OUT OF THE USE OF OR INABILITY TO USE THE ENGINE AND/OR THE SDK, EVEN IF VALVE HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES.

Natural Selection copyright and trademarks
==========================================
All artwork, sounds, audio, screenshots, text and code in Natural Selection, Zen of Sudoku, Spark engine and Natural Selection 2 are Copyright © 2014 Unknown Worlds Entertainment, Inc (http://www.unknownworlds.com).

The mark Natural Selection was first represented in association with video-game software in June of 2001, and was first used in commerce around January, 2002. Natural Selection is Registered with the U.S. Patent and Trademark Office (No. 4,179,393).

Natural Selection license
=========================
See COPYING.txt for the GNU GENERAL PUBLIC LICENSE

EXCLUDED CODE: The code described below and contained in the Natural Selection Source Code release is not part of the Program covered by the GPL and is expressly excluded from its terms. You are solely responsible for obtaining from the copyright holder a license for such code and complying with the applicable license terms.

EXCLUDED CODE AND LIBRARIES
- Half Life 1 SDK LICENSE (Copyright(C) Valve Corp.)
- FMOD 3.7.5
- Lua 5.0 (http://lua.org)
- Particle system library by David McAllister (http://www.cs.unc.edu/techreports/00-007.pdf).

Original code and design by Charlie Cleveland (charlie@unknownworlds.com, @flayra).

Many contributions from Karl Patrick (karl.patrick@gmail.com), Petter Rønningen <tankefugl@gmail.com>, Harry Walsh <harry.walsh@gmail.com>, and probably lots of people I forgot.

