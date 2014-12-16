# Compiler flags...
CPP_COMPILER = g++
C_COMPILER = gcc

# Include paths...
Developer-debug_Include_Path=-I"../" -I"U:/include/stlport" -I"U:/include/nexus" -I"U:/include/lua" -I"U:/include/particle" -I"U:/include" 
Developer-release_Include_Path=-I"../" -I"U:/include/stlport" -I"U:/include/nexus" -I"U:/include/lua" -I"U:/include/particle" -I"U:/include" 
Playtest-balancedisabled_Include_Path=-I"../" -I"U:/include/stlport" -I"U:/include/nexus" -I"U:/include/lua" -I"U:/include/particle" 
Playtest_Include_Path=-I"../" -I"..//includes/lua/include" -I"..//particles/" -I"..//includes/vgui/include" -I"..//includes/libcurl-7.18-nossl/include/curl" 

# Library paths...
Developer-debug_Library_Path=-L"U:/gccdebug" 
Developer-release_Library_Path=-L"U:/gccrelease" 
Playtest-balancedisabled_Library_Path=-L"U:/gccrelease" 
Playtest_Library_Path=-L"..//includes/lua/gcclib" -L"..//particles/gccRelease" -L"..//includes/gcclibcurl-7.18-nossl" -L"..//includes/vgui/lib/gccwin32_vc6" 

# Additional libraries...
Developer-debug_Libraries=-Wl,--start-group -lwinmm -lws2_32 -lparticles -lliblua -lliblualib -lnexus_server -lssleay32 -llibeay32 -llibcurl  -Wl,--end-group
Developer-release_Libraries=-Wl,--start-group -lwinmm -lws2_32 -lparticles -lliblua -lliblualib -lssleay32 -llibeay32 -llibcurl  -Wl,--end-group
Playtest-balancedisabled_Libraries=-Wl,--start-group -lwinmm -lws2_32 -lparticles -lliblua -lliblualib -lssleay32 -llibeay32  -Wl,--end-group
Playtest_Libraries=-Wl,--start-group -lwinmm -lws2_32 -lparticles -llua5.1 -llibcurl  -Wl,--end-group

# Preprocessor definitions...
Developer-debug_Preprocessor_Definitions=-D _DEBUG -D DEBUG -D GCC_BUILD -D _WINDOWS -D QUIVER -D VOXEL -D QUAKE2 -D VALVE_DLL -D AVH_SERVER -D AVH_SECURE_PRERELEASE_BUILD -D USE_OLDAUTH -D $(NOINHERIT) 
Developer-release_Preprocessor_Definitions=-D NDEBUG -D GCC_BUILD -D _WINDOWS -D QUIVER -D VOXEL -D QUAKE2 -D VALVE_DLL -D AVH_SERVER -D AVH_SECURE_PRERELEASE_BUILD -D USE_OLDAUTH -D $(NOINHERIT) 
Playtest-balancedisabled_Preprocessor_Definitions=-D NDEBUG -D GCC_BUILD -D _WINDOWS -D QUIVER -D VOXEL -D QUAKE2 -D VALVE_DLL -D AVH_SERVER -D SERVER -D AVH_PLAYTEST_BUILD -D $(NOINHERIT) 
Playtest_Preprocessor_Definitions=-D NDEBUG -D GCC_BUILD -D _WINDOWS -D QUIVER -D VOXEL -D QUAKE2 -D VALVE_DLL -D AVH_SERVER -D AVH_NO_NEXUS -D USE_OLDAUTH -D $(NOINHERIT) 

# Implictly linked object files...
Developer-debug_Implicitly_Linked_Objects=
Developer-release_Implicitly_Linked_Objects=
Playtest-balancedisabled_Implicitly_Linked_Objects=
Playtest_Implicitly_Linked_Objects=

# Compiler flags...
Developer-debug_Compiler_Flags=-fPIC -Werror -O0 -g 
Developer-release_Compiler_Flags=-fPIC -O3 
Playtest-balancedisabled_Compiler_Flags=-fPIC -O3 
Playtest_Compiler_Flags=-fPIC -O3 

# Builds all configurations for this project...
.PHONY: build_all_configurations
build_all_configurations: Developer-debug Developer-release Playtest-balancedisabled Playtest 

# Builds the Developer-debug configuration...
.PHONY: Developer-debug
Developer-debug: create_folders V:/temp/ns.dll/gccDeveloper-debug/animating.o V:/temp/ns.dll/gccDeveloper-debug/animation.o V:/temp/ns.dll/gccDeveloper-debug/bmodels.o V:/temp/ns.dll/gccDeveloper-debug/buttons.o V:/temp/ns.dll/gccDeveloper-debug/cbase.o V:/temp/ns.dll/gccDeveloper-debug/client.o V:/temp/ns.dll/gccDeveloper-debug/combat.o V:/temp/ns.dll/gccDeveloper-debug/doors.o V:/temp/ns.dll/gccDeveloper-debug/effects.o V:/temp/ns.dll/gccDeveloper-debug/egon.o V:/temp/ns.dll/gccDeveloper-debug/explode.o V:/temp/ns.dll/gccDeveloper-debug/func_break.o V:/temp/ns.dll/gccDeveloper-debug/func_tank.o V:/temp/ns.dll/gccDeveloper-debug/game.o V:/temp/ns.dll/gccDeveloper-debug/gamerules.o V:/temp/ns.dll/gccDeveloper-debug/gauss.o V:/temp/ns.dll/gccDeveloper-debug/globals.o V:/temp/ns.dll/gccDeveloper-debug/h_ai.o V:/temp/ns.dll/gccDeveloper-debug/h_battery.o V:/temp/ns.dll/gccDeveloper-debug/h_cycler.o V:/temp/ns.dll/gccDeveloper-debug/h_export.o V:/temp/ns.dll/gccDeveloper-debug/items.o V:/temp/ns.dll/gccDeveloper-debug/lights.o V:/temp/ns.dll/gccDeveloper-debug/maprules.o V:/temp/ns.dll/gccDeveloper-debug/mpstubb.o V:/temp/ns.dll/gccDeveloper-debug/multiplay_gamerules.o V:/temp/ns.dll/gccDeveloper-debug/observer.o V:/temp/ns.dll/gccDeveloper-debug/pathcorner.o V:/temp/ns.dll/gccDeveloper-debug/plane.o V:/temp/ns.dll/gccDeveloper-debug/plats.o V:/temp/ns.dll/gccDeveloper-debug/player.o V:/temp/ns.dll/gccDeveloper-debug/../pm_shared/pm_debug.o V:/temp/ns.dll/gccDeveloper-debug/../pm_shared/pm_math.o V:/temp/ns.dll/gccDeveloper-debug/../pm_shared/pm_shared.o V:/temp/ns.dll/gccDeveloper-debug/satchel.o V:/temp/ns.dll/gccDeveloper-debug/shotgun.o V:/temp/ns.dll/gccDeveloper-debug/singleplay_gamerules.o V:/temp/ns.dll/gccDeveloper-debug/skill.o V:/temp/ns.dll/gccDeveloper-debug/sound.o V:/temp/ns.dll/gccDeveloper-debug/soundent.o V:/temp/ns.dll/gccDeveloper-debug/spectator.o V:/temp/ns.dll/gccDeveloper-debug/squeakgrenade.o V:/temp/ns.dll/gccDeveloper-debug/subs.o V:/temp/ns.dll/gccDeveloper-debug/teamplay_gamerules.o V:/temp/ns.dll/gccDeveloper-debug/triggers.o V:/temp/ns.dll/gccDeveloper-debug/turret.o V:/temp/ns.dll/gccDeveloper-debug/util.o V:/temp/ns.dll/gccDeveloper-debug/../game_shared/voice_banmgr.o V:/temp/ns.dll/gccDeveloper-debug/../game_shared/voice_gamemgr.o V:/temp/ns.dll/gccDeveloper-debug/weapons.o V:/temp/ns.dll/gccDeveloper-debug/world.o V:/temp/ns.dll/gccDeveloper-debug/xen.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AnimationUtil.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienEquipment.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienTurret.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienWeapon.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAssert.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBaseBuildable.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBaseInfoLocation.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBuildable.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHCloakable.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHCombat.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHConsoleCommands.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHConstants.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHCurl.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHEntities.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHEntityHierarchy.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHGamerules.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHHive.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMapExtents.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMarineEquipment.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMarineTurret.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMarineWeapon.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMiniMap.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMovementUtil.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHNetworkMessages.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHNexusServer.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHNexusTunnelToClient.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHOrder.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPlayer.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPlayerUpgrade.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPushableBuildable.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHReinforceable.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHResearchManager.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHScriptManager.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHScriptServer.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHScriptShared.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSelectionHelper.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHServerPlayerData.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHServerUtil.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSharedMovementInfo.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSharedUtil.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSiegeTurret.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSoundListManager.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpawn.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpecials.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTeam.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTechNode.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTechSlotManager.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTechTree.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTurret.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHVisibleBlipList.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHVoiceHelper.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWeldable.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWorldUpdate.o V:/temp/ns.dll/gccDeveloper-debug/../mod/CollisionChecker.o V:/temp/ns.dll/gccDeveloper-debug/../mod/CollisionChecker_ServerOnly.o V:/temp/ns.dll/gccDeveloper-debug/../mod/CollisionUtil.o V:/temp/ns.dll/gccDeveloper-debug/../mod/NetworkMeter.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAcidRocketGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienAbilities.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBasePlayerWeapon.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBileBombGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBite.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBite2.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBlink.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBuildingGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHClaws.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHDevour.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHDivineWind.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHGrenade.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHGrenadeGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHHealingSpray.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHHeavyMachineGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHItemInfo.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHKnife.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMachineGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMetabolize.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMine.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParasiteGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPistol.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPrimalScream.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSonicGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpikeGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpitGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpores.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHStomp.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSwipe.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHUmbraGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWebSpinner.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWelder.o V:/temp/ns.dll/gccDeveloper-debug/ggrenade.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleSystem.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleSystemEntity.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleSystemManager.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleTemplate.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleTemplateServer.o V:/temp/ns.dll/gccDeveloper-debug/../util/Balance.o V:/temp/ns.dll/gccDeveloper-debug/../util/Checksum.o V:/temp/ns.dll/gccDeveloper-debug/../util/GammaTable.o V:/temp/ns.dll/gccDeveloper-debug/../util/LinuxSupport.o V:/temp/ns.dll/gccDeveloper-debug/../util/Mat3.o V:/temp/ns.dll/gccDeveloper-debug/../util/MathUtil.o V:/temp/ns.dll/gccDeveloper-debug/../util/Quat.o V:/temp/ns.dll/gccDeveloper-debug/../util/Stacktrace.o V:/temp/ns.dll/gccDeveloper-debug/../util/STLUtil.o V:/temp/ns.dll/gccDeveloper-debug/../util/Tokenizer.o V:/temp/ns.dll/gccDeveloper-debug/../util/Zassert.o V:/temp/ns.dll/gccDeveloper-debug/../util/ZassertTemplate.o V:/temp/ns.dll/gccDeveloper-debug/../textrep/TRDescription.o V:/temp/ns.dll/gccDeveloper-debug/../textrep/TRFactory.o 
	g++ -fPIC -shared -Wl,-soname,libns.dll.so -o V:/temp/ns.dll/gccDeveloper-debug/libns.dll.so V:/temp/ns.dll/gccDeveloper-debug/animating.o V:/temp/ns.dll/gccDeveloper-debug/animation.o V:/temp/ns.dll/gccDeveloper-debug/bmodels.o V:/temp/ns.dll/gccDeveloper-debug/buttons.o V:/temp/ns.dll/gccDeveloper-debug/cbase.o V:/temp/ns.dll/gccDeveloper-debug/client.o V:/temp/ns.dll/gccDeveloper-debug/combat.o V:/temp/ns.dll/gccDeveloper-debug/doors.o V:/temp/ns.dll/gccDeveloper-debug/effects.o V:/temp/ns.dll/gccDeveloper-debug/egon.o V:/temp/ns.dll/gccDeveloper-debug/explode.o V:/temp/ns.dll/gccDeveloper-debug/func_break.o V:/temp/ns.dll/gccDeveloper-debug/func_tank.o V:/temp/ns.dll/gccDeveloper-debug/game.o V:/temp/ns.dll/gccDeveloper-debug/gamerules.o V:/temp/ns.dll/gccDeveloper-debug/gauss.o V:/temp/ns.dll/gccDeveloper-debug/globals.o V:/temp/ns.dll/gccDeveloper-debug/h_ai.o V:/temp/ns.dll/gccDeveloper-debug/h_battery.o V:/temp/ns.dll/gccDeveloper-debug/h_cycler.o V:/temp/ns.dll/gccDeveloper-debug/h_export.o V:/temp/ns.dll/gccDeveloper-debug/items.o V:/temp/ns.dll/gccDeveloper-debug/lights.o V:/temp/ns.dll/gccDeveloper-debug/maprules.o V:/temp/ns.dll/gccDeveloper-debug/mpstubb.o V:/temp/ns.dll/gccDeveloper-debug/multiplay_gamerules.o V:/temp/ns.dll/gccDeveloper-debug/observer.o V:/temp/ns.dll/gccDeveloper-debug/pathcorner.o V:/temp/ns.dll/gccDeveloper-debug/plane.o V:/temp/ns.dll/gccDeveloper-debug/plats.o V:/temp/ns.dll/gccDeveloper-debug/player.o V:/temp/ns.dll/gccDeveloper-debug/../pm_shared/pm_debug.o V:/temp/ns.dll/gccDeveloper-debug/../pm_shared/pm_math.o V:/temp/ns.dll/gccDeveloper-debug/../pm_shared/pm_shared.o V:/temp/ns.dll/gccDeveloper-debug/satchel.o V:/temp/ns.dll/gccDeveloper-debug/shotgun.o V:/temp/ns.dll/gccDeveloper-debug/singleplay_gamerules.o V:/temp/ns.dll/gccDeveloper-debug/skill.o V:/temp/ns.dll/gccDeveloper-debug/sound.o V:/temp/ns.dll/gccDeveloper-debug/soundent.o V:/temp/ns.dll/gccDeveloper-debug/spectator.o V:/temp/ns.dll/gccDeveloper-debug/squeakgrenade.o V:/temp/ns.dll/gccDeveloper-debug/subs.o V:/temp/ns.dll/gccDeveloper-debug/teamplay_gamerules.o V:/temp/ns.dll/gccDeveloper-debug/triggers.o V:/temp/ns.dll/gccDeveloper-debug/turret.o V:/temp/ns.dll/gccDeveloper-debug/util.o V:/temp/ns.dll/gccDeveloper-debug/../game_shared/voice_banmgr.o V:/temp/ns.dll/gccDeveloper-debug/../game_shared/voice_gamemgr.o V:/temp/ns.dll/gccDeveloper-debug/weapons.o V:/temp/ns.dll/gccDeveloper-debug/world.o V:/temp/ns.dll/gccDeveloper-debug/xen.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AnimationUtil.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienEquipment.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienTurret.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienWeapon.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAssert.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBaseBuildable.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBaseInfoLocation.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBuildable.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHCloakable.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHCombat.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHConsoleCommands.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHConstants.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHCurl.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHEntities.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHEntityHierarchy.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHGamerules.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHHive.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMapExtents.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMarineEquipment.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMarineTurret.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMarineWeapon.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMiniMap.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMovementUtil.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHNetworkMessages.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHNexusServer.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHNexusTunnelToClient.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHOrder.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPlayer.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPlayerUpgrade.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPushableBuildable.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHReinforceable.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHResearchManager.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHScriptManager.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHScriptServer.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHScriptShared.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSelectionHelper.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHServerPlayerData.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHServerUtil.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSharedMovementInfo.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSharedUtil.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSiegeTurret.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSoundListManager.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpawn.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpecials.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTeam.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTechNode.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTechSlotManager.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTechTree.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTurret.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHVisibleBlipList.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHVoiceHelper.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWeldable.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWorldUpdate.o V:/temp/ns.dll/gccDeveloper-debug/../mod/CollisionChecker.o V:/temp/ns.dll/gccDeveloper-debug/../mod/CollisionChecker_ServerOnly.o V:/temp/ns.dll/gccDeveloper-debug/../mod/CollisionUtil.o V:/temp/ns.dll/gccDeveloper-debug/../mod/NetworkMeter.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAcidRocketGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienAbilities.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBasePlayerWeapon.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBileBombGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBite.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBite2.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBlink.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBuildingGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHClaws.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHDevour.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHDivineWind.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHGrenade.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHGrenadeGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHHealingSpray.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHHeavyMachineGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHItemInfo.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHKnife.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMachineGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMetabolize.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMine.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParasiteGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPistol.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPrimalScream.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSonicGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpikeGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpitGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpores.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHStomp.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSwipe.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHUmbraGun.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWebSpinner.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWelder.o V:/temp/ns.dll/gccDeveloper-debug/ggrenade.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleSystem.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleSystemEntity.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleSystemManager.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleTemplate.o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleTemplateServer.o V:/temp/ns.dll/gccDeveloper-debug/../util/Balance.o V:/temp/ns.dll/gccDeveloper-debug/../util/Checksum.o V:/temp/ns.dll/gccDeveloper-debug/../util/GammaTable.o V:/temp/ns.dll/gccDeveloper-debug/../util/LinuxSupport.o V:/temp/ns.dll/gccDeveloper-debug/../util/Mat3.o V:/temp/ns.dll/gccDeveloper-debug/../util/MathUtil.o V:/temp/ns.dll/gccDeveloper-debug/../util/Quat.o V:/temp/ns.dll/gccDeveloper-debug/../util/Stacktrace.o V:/temp/ns.dll/gccDeveloper-debug/../util/STLUtil.o V:/temp/ns.dll/gccDeveloper-debug/../util/Tokenizer.o V:/temp/ns.dll/gccDeveloper-debug/../util/Zassert.o V:/temp/ns.dll/gccDeveloper-debug/../util/ZassertTemplate.o V:/temp/ns.dll/gccDeveloper-debug/../textrep/TRDescription.o V:/temp/ns.dll/gccDeveloper-debug/../textrep/TRFactory.o  $(Developer-debug_Implicitly_Linked_Objects)

# Compiles file animating.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/animating.d
V:/temp/ns.dll/gccDeveloper-debug/animating.o: animating.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c animating.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/animating.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM animating.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/animating.d

# Compiles file animation.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/animation.d
V:/temp/ns.dll/gccDeveloper-debug/animation.o: animation.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c animation.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/animation.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM animation.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/animation.d

# Compiles file bmodels.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/bmodels.d
V:/temp/ns.dll/gccDeveloper-debug/bmodels.o: bmodels.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c bmodels.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/bmodels.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM bmodels.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/bmodels.d

# Compiles file buttons.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/buttons.d
V:/temp/ns.dll/gccDeveloper-debug/buttons.o: buttons.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c buttons.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/buttons.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM buttons.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/buttons.d

# Compiles file cbase.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/cbase.d
V:/temp/ns.dll/gccDeveloper-debug/cbase.o: cbase.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c cbase.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/cbase.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM cbase.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/cbase.d

# Compiles file client.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/client.d
V:/temp/ns.dll/gccDeveloper-debug/client.o: client.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c client.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/client.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM client.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/client.d

# Compiles file combat.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/combat.d
V:/temp/ns.dll/gccDeveloper-debug/combat.o: combat.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c combat.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/combat.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM combat.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/combat.d

# Compiles file doors.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/doors.d
V:/temp/ns.dll/gccDeveloper-debug/doors.o: doors.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c doors.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/doors.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM doors.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/doors.d

# Compiles file effects.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/effects.d
V:/temp/ns.dll/gccDeveloper-debug/effects.o: effects.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c effects.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/effects.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM effects.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/effects.d

# Compiles file egon.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/egon.d
V:/temp/ns.dll/gccDeveloper-debug/egon.o: egon.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c egon.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/egon.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM egon.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/egon.d

# Compiles file explode.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/explode.d
V:/temp/ns.dll/gccDeveloper-debug/explode.o: explode.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c explode.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/explode.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM explode.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/explode.d

# Compiles file func_break.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/func_break.d
V:/temp/ns.dll/gccDeveloper-debug/func_break.o: func_break.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c func_break.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/func_break.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM func_break.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/func_break.d

# Compiles file func_tank.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/func_tank.d
V:/temp/ns.dll/gccDeveloper-debug/func_tank.o: func_tank.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c func_tank.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/func_tank.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM func_tank.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/func_tank.d

# Compiles file game.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/game.d
V:/temp/ns.dll/gccDeveloper-debug/game.o: game.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c game.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/game.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM game.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/game.d

# Compiles file gamerules.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/gamerules.d
V:/temp/ns.dll/gccDeveloper-debug/gamerules.o: gamerules.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c gamerules.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/gamerules.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM gamerules.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/gamerules.d

# Compiles file gauss.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/gauss.d
V:/temp/ns.dll/gccDeveloper-debug/gauss.o: gauss.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c gauss.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/gauss.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM gauss.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/gauss.d

# Compiles file globals.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/globals.d
V:/temp/ns.dll/gccDeveloper-debug/globals.o: globals.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c globals.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/globals.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM globals.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/globals.d

# Compiles file h_ai.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/h_ai.d
V:/temp/ns.dll/gccDeveloper-debug/h_ai.o: h_ai.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c h_ai.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/h_ai.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM h_ai.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/h_ai.d

# Compiles file h_battery.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/h_battery.d
V:/temp/ns.dll/gccDeveloper-debug/h_battery.o: h_battery.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c h_battery.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/h_battery.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM h_battery.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/h_battery.d

# Compiles file h_cycler.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/h_cycler.d
V:/temp/ns.dll/gccDeveloper-debug/h_cycler.o: h_cycler.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c h_cycler.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/h_cycler.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM h_cycler.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/h_cycler.d

# Compiles file h_export.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/h_export.d
V:/temp/ns.dll/gccDeveloper-debug/h_export.o: h_export.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c h_export.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/h_export.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM h_export.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/h_export.d

# Compiles file items.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/items.d
V:/temp/ns.dll/gccDeveloper-debug/items.o: items.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c items.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/items.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM items.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/items.d

# Compiles file lights.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/lights.d
V:/temp/ns.dll/gccDeveloper-debug/lights.o: lights.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c lights.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/lights.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM lights.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/lights.d

# Compiles file maprules.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/maprules.d
V:/temp/ns.dll/gccDeveloper-debug/maprules.o: maprules.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c maprules.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/maprules.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM maprules.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/maprules.d

# Compiles file mpstubb.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/mpstubb.d
V:/temp/ns.dll/gccDeveloper-debug/mpstubb.o: mpstubb.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c mpstubb.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/mpstubb.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM mpstubb.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/mpstubb.d

# Compiles file multiplay_gamerules.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/multiplay_gamerules.d
V:/temp/ns.dll/gccDeveloper-debug/multiplay_gamerules.o: multiplay_gamerules.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c multiplay_gamerules.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/multiplay_gamerules.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM multiplay_gamerules.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/multiplay_gamerules.d

# Compiles file observer.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/observer.d
V:/temp/ns.dll/gccDeveloper-debug/observer.o: observer.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c observer.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/observer.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM observer.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/observer.d

# Compiles file pathcorner.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/pathcorner.d
V:/temp/ns.dll/gccDeveloper-debug/pathcorner.o: pathcorner.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c pathcorner.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/pathcorner.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM pathcorner.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/pathcorner.d

# Compiles file plane.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/plane.d
V:/temp/ns.dll/gccDeveloper-debug/plane.o: plane.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c plane.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/plane.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM plane.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/plane.d

# Compiles file plats.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/plats.d
V:/temp/ns.dll/gccDeveloper-debug/plats.o: plats.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c plats.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/plats.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM plats.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/plats.d

# Compiles file player.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/player.d
V:/temp/ns.dll/gccDeveloper-debug/player.o: player.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c player.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/player.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM player.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/player.d

# Compiles file ../pm_shared/pm_debug.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../pm_shared/pm_debug.d
V:/temp/ns.dll/gccDeveloper-debug/../pm_shared/pm_debug.o: ../pm_shared/pm_debug.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../pm_shared/pm_debug.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../pm_shared/pm_debug.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../pm_shared/pm_debug.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../pm_shared/pm_debug.d

# Compiles file ../pm_shared/pm_math.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../pm_shared/pm_math.d
V:/temp/ns.dll/gccDeveloper-debug/../pm_shared/pm_math.o: ../pm_shared/pm_math.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../pm_shared/pm_math.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../pm_shared/pm_math.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../pm_shared/pm_math.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../pm_shared/pm_math.d

# Compiles file ../pm_shared/pm_shared.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../pm_shared/pm_shared.d
V:/temp/ns.dll/gccDeveloper-debug/../pm_shared/pm_shared.o: ../pm_shared/pm_shared.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../pm_shared/pm_shared.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../pm_shared/pm_shared.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../pm_shared/pm_shared.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../pm_shared/pm_shared.d

# Compiles file satchel.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/satchel.d
V:/temp/ns.dll/gccDeveloper-debug/satchel.o: satchel.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c satchel.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/satchel.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM satchel.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/satchel.d

# Compiles file shotgun.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/shotgun.d
V:/temp/ns.dll/gccDeveloper-debug/shotgun.o: shotgun.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c shotgun.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/shotgun.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM shotgun.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/shotgun.d

# Compiles file singleplay_gamerules.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/singleplay_gamerules.d
V:/temp/ns.dll/gccDeveloper-debug/singleplay_gamerules.o: singleplay_gamerules.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c singleplay_gamerules.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/singleplay_gamerules.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM singleplay_gamerules.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/singleplay_gamerules.d

# Compiles file skill.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/skill.d
V:/temp/ns.dll/gccDeveloper-debug/skill.o: skill.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c skill.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/skill.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM skill.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/skill.d

# Compiles file sound.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/sound.d
V:/temp/ns.dll/gccDeveloper-debug/sound.o: sound.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c sound.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/sound.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM sound.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/sound.d

# Compiles file soundent.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/soundent.d
V:/temp/ns.dll/gccDeveloper-debug/soundent.o: soundent.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c soundent.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/soundent.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM soundent.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/soundent.d

# Compiles file spectator.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/spectator.d
V:/temp/ns.dll/gccDeveloper-debug/spectator.o: spectator.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c spectator.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/spectator.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM spectator.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/spectator.d

# Compiles file squeakgrenade.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/squeakgrenade.d
V:/temp/ns.dll/gccDeveloper-debug/squeakgrenade.o: squeakgrenade.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c squeakgrenade.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/squeakgrenade.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM squeakgrenade.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/squeakgrenade.d

# Compiles file subs.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/subs.d
V:/temp/ns.dll/gccDeveloper-debug/subs.o: subs.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c subs.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/subs.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM subs.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/subs.d

# Compiles file teamplay_gamerules.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/teamplay_gamerules.d
V:/temp/ns.dll/gccDeveloper-debug/teamplay_gamerules.o: teamplay_gamerules.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c teamplay_gamerules.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/teamplay_gamerules.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM teamplay_gamerules.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/teamplay_gamerules.d

# Compiles file triggers.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/triggers.d
V:/temp/ns.dll/gccDeveloper-debug/triggers.o: triggers.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c triggers.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/triggers.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM triggers.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/triggers.d

# Compiles file turret.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/turret.d
V:/temp/ns.dll/gccDeveloper-debug/turret.o: turret.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c turret.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/turret.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM turret.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/turret.d

# Compiles file util.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/util.d
V:/temp/ns.dll/gccDeveloper-debug/util.o: util.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c util.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/util.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM util.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/util.d

# Compiles file ../game_shared/voice_banmgr.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../game_shared/voice_banmgr.d
V:/temp/ns.dll/gccDeveloper-debug/../game_shared/voice_banmgr.o: ../game_shared/voice_banmgr.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../game_shared/voice_banmgr.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../game_shared/voice_banmgr.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../game_shared/voice_banmgr.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../game_shared/voice_banmgr.d

# Compiles file ../game_shared/voice_gamemgr.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../game_shared/voice_gamemgr.d
V:/temp/ns.dll/gccDeveloper-debug/../game_shared/voice_gamemgr.o: ../game_shared/voice_gamemgr.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../game_shared/voice_gamemgr.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../game_shared/voice_gamemgr.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../game_shared/voice_gamemgr.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../game_shared/voice_gamemgr.d

# Compiles file weapons.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/weapons.d
V:/temp/ns.dll/gccDeveloper-debug/weapons.o: weapons.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c weapons.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/weapons.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM weapons.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/weapons.d

# Compiles file world.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/world.d
V:/temp/ns.dll/gccDeveloper-debug/world.o: world.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c world.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/world.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM world.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/world.d

# Compiles file xen.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/xen.d
V:/temp/ns.dll/gccDeveloper-debug/xen.o: xen.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c xen.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/xen.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM xen.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/xen.d

# Compiles file ../mod/AnimationUtil.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AnimationUtil.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AnimationUtil.o: ../mod/AnimationUtil.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AnimationUtil.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AnimationUtil.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AnimationUtil.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AnimationUtil.d

# Compiles file ../mod/AvHAlienEquipment.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienEquipment.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienEquipment.o: ../mod/AvHAlienEquipment.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHAlienEquipment.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienEquipment.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHAlienEquipment.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienEquipment.d

# Compiles file ../mod/AvHAlienTurret.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienTurret.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienTurret.o: ../mod/AvHAlienTurret.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHAlienTurret.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienTurret.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHAlienTurret.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienTurret.d

# Compiles file ../mod/AvHAlienWeapon.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienWeapon.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienWeapon.o: ../mod/AvHAlienWeapon.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHAlienWeapon.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienWeapon.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHAlienWeapon.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienWeapon.d

# Compiles file ../mod/AvHAssert.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAssert.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAssert.o: ../mod/AvHAssert.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHAssert.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAssert.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHAssert.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAssert.d

# Compiles file ../mod/AvHBaseBuildable.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBaseBuildable.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBaseBuildable.o: ../mod/AvHBaseBuildable.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHBaseBuildable.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBaseBuildable.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHBaseBuildable.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBaseBuildable.d

# Compiles file ../mod/AvHBaseInfoLocation.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBaseInfoLocation.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBaseInfoLocation.o: ../mod/AvHBaseInfoLocation.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHBaseInfoLocation.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBaseInfoLocation.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHBaseInfoLocation.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBaseInfoLocation.d

# Compiles file ../mod/AvHBuildable.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBuildable.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBuildable.o: ../mod/AvHBuildable.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHBuildable.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBuildable.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHBuildable.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBuildable.d

# Compiles file ../mod/AvHCloakable.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHCloakable.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHCloakable.o: ../mod/AvHCloakable.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHCloakable.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHCloakable.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHCloakable.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHCloakable.d

# Compiles file ../mod/AvHCombat.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHCombat.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHCombat.o: ../mod/AvHCombat.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHCombat.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHCombat.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHCombat.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHCombat.d

# Compiles file ../mod/AvHConsoleCommands.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHConsoleCommands.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHConsoleCommands.o: ../mod/AvHConsoleCommands.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHConsoleCommands.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHConsoleCommands.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHConsoleCommands.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHConsoleCommands.d

# Compiles file ../mod/AvHConstants.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHConstants.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHConstants.o: ../mod/AvHConstants.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHConstants.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHConstants.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHConstants.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHConstants.d

# Compiles file ../mod/AvHCurl.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHCurl.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHCurl.o: ../mod/AvHCurl.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHCurl.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHCurl.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHCurl.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHCurl.d

# Compiles file ../mod/AvHEntities.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHEntities.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHEntities.o: ../mod/AvHEntities.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHEntities.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHEntities.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHEntities.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHEntities.d

# Compiles file ../mod/AvHEntityHierarchy.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHEntityHierarchy.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHEntityHierarchy.o: ../mod/AvHEntityHierarchy.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHEntityHierarchy.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHEntityHierarchy.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHEntityHierarchy.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHEntityHierarchy.d

# Compiles file ../mod/AvHGamerules.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHGamerules.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHGamerules.o: ../mod/AvHGamerules.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHGamerules.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHGamerules.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHGamerules.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHGamerules.d

# Compiles file ../mod/AvHHive.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHHive.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHHive.o: ../mod/AvHHive.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHHive.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHHive.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHHive.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHHive.d

# Compiles file ../mod/AvHMapExtents.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMapExtents.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMapExtents.o: ../mod/AvHMapExtents.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHMapExtents.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMapExtents.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHMapExtents.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMapExtents.d

# Compiles file ../mod/AvHMarineEquipment.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMarineEquipment.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMarineEquipment.o: ../mod/AvHMarineEquipment.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHMarineEquipment.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMarineEquipment.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHMarineEquipment.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMarineEquipment.d

# Compiles file ../mod/AvHMarineTurret.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMarineTurret.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMarineTurret.o: ../mod/AvHMarineTurret.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHMarineTurret.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMarineTurret.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHMarineTurret.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMarineTurret.d

# Compiles file ../mod/AvHMarineWeapon.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMarineWeapon.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMarineWeapon.o: ../mod/AvHMarineWeapon.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHMarineWeapon.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMarineWeapon.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHMarineWeapon.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMarineWeapon.d

# Compiles file ../mod/AvHMiniMap.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMiniMap.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMiniMap.o: ../mod/AvHMiniMap.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHMiniMap.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMiniMap.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHMiniMap.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMiniMap.d

# Compiles file ../mod/AvHMovementUtil.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMovementUtil.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMovementUtil.o: ../mod/AvHMovementUtil.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHMovementUtil.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMovementUtil.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHMovementUtil.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMovementUtil.d

# Compiles file ../mod/AvHNetworkMessages.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHNetworkMessages.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHNetworkMessages.o: ../mod/AvHNetworkMessages.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHNetworkMessages.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHNetworkMessages.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHNetworkMessages.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHNetworkMessages.d

# Compiles file ../mod/AvHNexusServer.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHNexusServer.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHNexusServer.o: ../mod/AvHNexusServer.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHNexusServer.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHNexusServer.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHNexusServer.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHNexusServer.d

# Compiles file ../mod/AvHNexusTunnelToClient.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHNexusTunnelToClient.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHNexusTunnelToClient.o: ../mod/AvHNexusTunnelToClient.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHNexusTunnelToClient.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHNexusTunnelToClient.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHNexusTunnelToClient.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHNexusTunnelToClient.d

# Compiles file ../mod/AvHOrder.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHOrder.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHOrder.o: ../mod/AvHOrder.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHOrder.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHOrder.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHOrder.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHOrder.d

# Compiles file ../mod/AvHPlayer.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPlayer.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPlayer.o: ../mod/AvHPlayer.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHPlayer.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPlayer.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHPlayer.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPlayer.d

# Compiles file ../mod/AvHPlayerUpgrade.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPlayerUpgrade.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPlayerUpgrade.o: ../mod/AvHPlayerUpgrade.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHPlayerUpgrade.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPlayerUpgrade.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHPlayerUpgrade.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPlayerUpgrade.d

# Compiles file ../mod/AvHPushableBuildable.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPushableBuildable.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPushableBuildable.o: ../mod/AvHPushableBuildable.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHPushableBuildable.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPushableBuildable.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHPushableBuildable.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPushableBuildable.d

# Compiles file ../mod/AvHReinforceable.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHReinforceable.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHReinforceable.o: ../mod/AvHReinforceable.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHReinforceable.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHReinforceable.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHReinforceable.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHReinforceable.d

# Compiles file ../mod/AvHResearchManager.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHResearchManager.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHResearchManager.o: ../mod/AvHResearchManager.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHResearchManager.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHResearchManager.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHResearchManager.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHResearchManager.d

# Compiles file ../mod/AvHScriptManager.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHScriptManager.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHScriptManager.o: ../mod/AvHScriptManager.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHScriptManager.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHScriptManager.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHScriptManager.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHScriptManager.d

# Compiles file ../mod/AvHScriptServer.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHScriptServer.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHScriptServer.o: ../mod/AvHScriptServer.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHScriptServer.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHScriptServer.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHScriptServer.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHScriptServer.d

# Compiles file ../mod/AvHScriptShared.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHScriptShared.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHScriptShared.o: ../mod/AvHScriptShared.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHScriptShared.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHScriptShared.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHScriptShared.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHScriptShared.d

# Compiles file ../mod/AvHSelectionHelper.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSelectionHelper.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSelectionHelper.o: ../mod/AvHSelectionHelper.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHSelectionHelper.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSelectionHelper.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHSelectionHelper.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSelectionHelper.d

# Compiles file ../mod/AvHServerPlayerData.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHServerPlayerData.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHServerPlayerData.o: ../mod/AvHServerPlayerData.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHServerPlayerData.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHServerPlayerData.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHServerPlayerData.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHServerPlayerData.d

# Compiles file ../mod/AvHServerUtil.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHServerUtil.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHServerUtil.o: ../mod/AvHServerUtil.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHServerUtil.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHServerUtil.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHServerUtil.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHServerUtil.d

# Compiles file ../mod/AvHSharedMovementInfo.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSharedMovementInfo.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSharedMovementInfo.o: ../mod/AvHSharedMovementInfo.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHSharedMovementInfo.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSharedMovementInfo.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHSharedMovementInfo.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSharedMovementInfo.d

# Compiles file ../mod/AvHSharedUtil.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSharedUtil.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSharedUtil.o: ../mod/AvHSharedUtil.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHSharedUtil.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSharedUtil.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHSharedUtil.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSharedUtil.d

# Compiles file ../mod/AvHSiegeTurret.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSiegeTurret.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSiegeTurret.o: ../mod/AvHSiegeTurret.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHSiegeTurret.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSiegeTurret.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHSiegeTurret.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSiegeTurret.d

# Compiles file ../mod/AvHSoundListManager.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSoundListManager.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSoundListManager.o: ../mod/AvHSoundListManager.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHSoundListManager.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSoundListManager.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHSoundListManager.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSoundListManager.d

# Compiles file ../mod/AvHSpawn.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpawn.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpawn.o: ../mod/AvHSpawn.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHSpawn.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpawn.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHSpawn.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpawn.d

# Compiles file ../mod/AvHSpecials.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpecials.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpecials.o: ../mod/AvHSpecials.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHSpecials.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpecials.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHSpecials.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpecials.d

# Compiles file ../mod/AvHTeam.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTeam.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTeam.o: ../mod/AvHTeam.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHTeam.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTeam.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHTeam.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTeam.d

# Compiles file ../mod/AvHTechNode.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTechNode.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTechNode.o: ../mod/AvHTechNode.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHTechNode.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTechNode.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHTechNode.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTechNode.d

# Compiles file ../mod/AvHTechSlotManager.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTechSlotManager.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTechSlotManager.o: ../mod/AvHTechSlotManager.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHTechSlotManager.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTechSlotManager.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHTechSlotManager.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTechSlotManager.d

# Compiles file ../mod/AvHTechTree.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTechTree.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTechTree.o: ../mod/AvHTechTree.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHTechTree.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTechTree.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHTechTree.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTechTree.d

# Compiles file ../mod/AvHTurret.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTurret.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTurret.o: ../mod/AvHTurret.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHTurret.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTurret.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHTurret.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHTurret.d

# Compiles file ../mod/AvHVisibleBlipList.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHVisibleBlipList.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHVisibleBlipList.o: ../mod/AvHVisibleBlipList.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHVisibleBlipList.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHVisibleBlipList.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHVisibleBlipList.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHVisibleBlipList.d

# Compiles file ../mod/AvHVoiceHelper.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHVoiceHelper.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHVoiceHelper.o: ../mod/AvHVoiceHelper.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHVoiceHelper.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHVoiceHelper.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHVoiceHelper.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHVoiceHelper.d

# Compiles file ../mod/AvHWeldable.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWeldable.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWeldable.o: ../mod/AvHWeldable.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHWeldable.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWeldable.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHWeldable.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWeldable.d

# Compiles file ../mod/AvHWorldUpdate.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWorldUpdate.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWorldUpdate.o: ../mod/AvHWorldUpdate.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHWorldUpdate.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWorldUpdate.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHWorldUpdate.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWorldUpdate.d

# Compiles file ../mod/CollisionChecker.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/CollisionChecker.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/CollisionChecker.o: ../mod/CollisionChecker.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/CollisionChecker.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/CollisionChecker.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/CollisionChecker.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/CollisionChecker.d

# Compiles file ../mod/CollisionChecker_ServerOnly.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/CollisionChecker_ServerOnly.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/CollisionChecker_ServerOnly.o: ../mod/CollisionChecker_ServerOnly.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/CollisionChecker_ServerOnly.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/CollisionChecker_ServerOnly.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/CollisionChecker_ServerOnly.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/CollisionChecker_ServerOnly.d

# Compiles file ../mod/CollisionUtil.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/CollisionUtil.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/CollisionUtil.o: ../mod/CollisionUtil.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/CollisionUtil.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/CollisionUtil.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/CollisionUtil.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/CollisionUtil.d

# Compiles file ../mod/NetworkMeter.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/NetworkMeter.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/NetworkMeter.o: ../mod/NetworkMeter.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/NetworkMeter.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/NetworkMeter.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/NetworkMeter.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/NetworkMeter.d

# Compiles file ../mod/AvHAcidRocketGun.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAcidRocketGun.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAcidRocketGun.o: ../mod/AvHAcidRocketGun.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHAcidRocketGun.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAcidRocketGun.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHAcidRocketGun.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAcidRocketGun.d

# Compiles file ../mod/AvHAlienAbilities.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienAbilities.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienAbilities.o: ../mod/AvHAlienAbilities.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHAlienAbilities.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienAbilities.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHAlienAbilities.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHAlienAbilities.d

# Compiles file ../mod/AvHBasePlayerWeapon.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBasePlayerWeapon.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBasePlayerWeapon.o: ../mod/AvHBasePlayerWeapon.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHBasePlayerWeapon.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBasePlayerWeapon.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHBasePlayerWeapon.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBasePlayerWeapon.d

# Compiles file ../mod/AvHBileBombGun.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBileBombGun.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBileBombGun.o: ../mod/AvHBileBombGun.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHBileBombGun.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBileBombGun.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHBileBombGun.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBileBombGun.d

# Compiles file ../mod/AvHBite.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBite.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBite.o: ../mod/AvHBite.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHBite.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBite.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHBite.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBite.d

# Compiles file ../mod/AvHBite2.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBite2.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBite2.o: ../mod/AvHBite2.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHBite2.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBite2.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHBite2.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBite2.d

# Compiles file ../mod/AvHBlink.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBlink.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBlink.o: ../mod/AvHBlink.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHBlink.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBlink.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHBlink.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBlink.d

# Compiles file ../mod/AvHBuildingGun.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBuildingGun.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBuildingGun.o: ../mod/AvHBuildingGun.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHBuildingGun.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBuildingGun.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHBuildingGun.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHBuildingGun.d

# Compiles file ../mod/AvHClaws.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHClaws.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHClaws.o: ../mod/AvHClaws.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHClaws.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHClaws.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHClaws.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHClaws.d

# Compiles file ../mod/AvHDevour.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHDevour.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHDevour.o: ../mod/AvHDevour.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHDevour.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHDevour.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHDevour.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHDevour.d

# Compiles file ../mod/AvHDivineWind.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHDivineWind.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHDivineWind.o: ../mod/AvHDivineWind.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHDivineWind.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHDivineWind.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHDivineWind.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHDivineWind.d

# Compiles file ../mod/AvHGrenade.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHGrenade.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHGrenade.o: ../mod/AvHGrenade.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHGrenade.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHGrenade.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHGrenade.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHGrenade.d

# Compiles file ../mod/AvHGrenadeGun.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHGrenadeGun.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHGrenadeGun.o: ../mod/AvHGrenadeGun.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHGrenadeGun.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHGrenadeGun.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHGrenadeGun.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHGrenadeGun.d

# Compiles file ../mod/AvHHealingSpray.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHHealingSpray.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHHealingSpray.o: ../mod/AvHHealingSpray.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHHealingSpray.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHHealingSpray.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHHealingSpray.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHHealingSpray.d

# Compiles file ../mod/AvHHeavyMachineGun.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHHeavyMachineGun.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHHeavyMachineGun.o: ../mod/AvHHeavyMachineGun.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHHeavyMachineGun.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHHeavyMachineGun.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHHeavyMachineGun.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHHeavyMachineGun.d

# Compiles file ../mod/AvHItemInfo.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHItemInfo.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHItemInfo.o: ../mod/AvHItemInfo.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHItemInfo.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHItemInfo.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHItemInfo.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHItemInfo.d

# Compiles file ../mod/AvHKnife.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHKnife.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHKnife.o: ../mod/AvHKnife.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHKnife.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHKnife.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHKnife.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHKnife.d

# Compiles file ../mod/AvHMachineGun.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMachineGun.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMachineGun.o: ../mod/AvHMachineGun.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHMachineGun.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMachineGun.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHMachineGun.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMachineGun.d

# Compiles file ../mod/AvHMetabolize.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMetabolize.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMetabolize.o: ../mod/AvHMetabolize.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHMetabolize.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMetabolize.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHMetabolize.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMetabolize.d

# Compiles file ../mod/AvHMine.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMine.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMine.o: ../mod/AvHMine.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHMine.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMine.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHMine.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHMine.d

# Compiles file ../mod/AvHParasiteGun.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParasiteGun.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParasiteGun.o: ../mod/AvHParasiteGun.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHParasiteGun.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParasiteGun.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHParasiteGun.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParasiteGun.d

# Compiles file ../mod/AvHPistol.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPistol.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPistol.o: ../mod/AvHPistol.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHPistol.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPistol.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHPistol.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPistol.d

# Compiles file ../mod/AvHPrimalScream.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPrimalScream.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPrimalScream.o: ../mod/AvHPrimalScream.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHPrimalScream.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPrimalScream.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHPrimalScream.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHPrimalScream.d

# Compiles file ../mod/AvHSonicGun.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSonicGun.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSonicGun.o: ../mod/AvHSonicGun.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHSonicGun.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSonicGun.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHSonicGun.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSonicGun.d

# Compiles file ../mod/AvHSpikeGun.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpikeGun.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpikeGun.o: ../mod/AvHSpikeGun.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHSpikeGun.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpikeGun.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHSpikeGun.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpikeGun.d

# Compiles file ../mod/AvHSpitGun.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpitGun.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpitGun.o: ../mod/AvHSpitGun.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHSpitGun.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpitGun.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHSpitGun.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpitGun.d

# Compiles file ../mod/AvHSpores.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpores.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpores.o: ../mod/AvHSpores.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHSpores.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpores.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHSpores.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSpores.d

# Compiles file ../mod/AvHStomp.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHStomp.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHStomp.o: ../mod/AvHStomp.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHStomp.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHStomp.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHStomp.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHStomp.d

# Compiles file ../mod/AvHSwipe.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSwipe.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSwipe.o: ../mod/AvHSwipe.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHSwipe.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSwipe.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHSwipe.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHSwipe.d

# Compiles file ../mod/AvHUmbraGun.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHUmbraGun.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHUmbraGun.o: ../mod/AvHUmbraGun.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHUmbraGun.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHUmbraGun.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHUmbraGun.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHUmbraGun.d

# Compiles file ../mod/AvHWebSpinner.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWebSpinner.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWebSpinner.o: ../mod/AvHWebSpinner.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHWebSpinner.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWebSpinner.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHWebSpinner.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWebSpinner.d

# Compiles file ../mod/AvHWelder.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWelder.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWelder.o: ../mod/AvHWelder.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHWelder.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWelder.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHWelder.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHWelder.d

# Compiles file ggrenade.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/ggrenade.d
V:/temp/ns.dll/gccDeveloper-debug/ggrenade.o: ggrenade.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ggrenade.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/ggrenade.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ggrenade.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/ggrenade.d

# Compiles file ../mod/AvHParticleSystem.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleSystem.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleSystem.o: ../mod/AvHParticleSystem.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHParticleSystem.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleSystem.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHParticleSystem.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleSystem.d

# Compiles file ../mod/AvHParticleSystemEntity.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleSystemEntity.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleSystemEntity.o: ../mod/AvHParticleSystemEntity.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHParticleSystemEntity.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleSystemEntity.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHParticleSystemEntity.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleSystemEntity.d

# Compiles file ../mod/AvHParticleSystemManager.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleSystemManager.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleSystemManager.o: ../mod/AvHParticleSystemManager.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHParticleSystemManager.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleSystemManager.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHParticleSystemManager.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleSystemManager.d

# Compiles file ../mod/AvHParticleTemplate.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleTemplate.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleTemplate.o: ../mod/AvHParticleTemplate.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHParticleTemplate.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleTemplate.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHParticleTemplate.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleTemplate.d

# Compiles file ../mod/AvHParticleTemplateServer.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleTemplateServer.d
V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleTemplateServer.o: ../mod/AvHParticleTemplateServer.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../mod/AvHParticleTemplateServer.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleTemplateServer.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../mod/AvHParticleTemplateServer.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../mod/AvHParticleTemplateServer.d

# Compiles file ../util/Balance.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../util/Balance.d
V:/temp/ns.dll/gccDeveloper-debug/../util/Balance.o: ../util/Balance.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../util/Balance.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../util/Balance.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../util/Balance.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../util/Balance.d

# Compiles file ../util/Checksum.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../util/Checksum.d
V:/temp/ns.dll/gccDeveloper-debug/../util/Checksum.o: ../util/Checksum.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../util/Checksum.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../util/Checksum.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../util/Checksum.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../util/Checksum.d

# Compiles file ../util/GammaTable.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../util/GammaTable.d
V:/temp/ns.dll/gccDeveloper-debug/../util/GammaTable.o: ../util/GammaTable.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../util/GammaTable.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../util/GammaTable.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../util/GammaTable.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../util/GammaTable.d

# Compiles file ../util/LinuxSupport.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../util/LinuxSupport.d
V:/temp/ns.dll/gccDeveloper-debug/../util/LinuxSupport.o: ../util/LinuxSupport.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../util/LinuxSupport.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../util/LinuxSupport.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../util/LinuxSupport.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../util/LinuxSupport.d

# Compiles file ../util/Mat3.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../util/Mat3.d
V:/temp/ns.dll/gccDeveloper-debug/../util/Mat3.o: ../util/Mat3.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../util/Mat3.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../util/Mat3.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../util/Mat3.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../util/Mat3.d

# Compiles file ../util/MathUtil.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../util/MathUtil.d
V:/temp/ns.dll/gccDeveloper-debug/../util/MathUtil.o: ../util/MathUtil.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../util/MathUtil.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../util/MathUtil.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../util/MathUtil.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../util/MathUtil.d

# Compiles file ../util/Quat.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../util/Quat.d
V:/temp/ns.dll/gccDeveloper-debug/../util/Quat.o: ../util/Quat.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../util/Quat.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../util/Quat.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../util/Quat.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../util/Quat.d

# Compiles file ../util/Stacktrace.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../util/Stacktrace.d
V:/temp/ns.dll/gccDeveloper-debug/../util/Stacktrace.o: ../util/Stacktrace.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../util/Stacktrace.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../util/Stacktrace.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../util/Stacktrace.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../util/Stacktrace.d

# Compiles file ../util/STLUtil.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../util/STLUtil.d
V:/temp/ns.dll/gccDeveloper-debug/../util/STLUtil.o: ../util/STLUtil.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../util/STLUtil.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../util/STLUtil.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../util/STLUtil.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../util/STLUtil.d

# Compiles file ../util/Tokenizer.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../util/Tokenizer.d
V:/temp/ns.dll/gccDeveloper-debug/../util/Tokenizer.o: ../util/Tokenizer.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../util/Tokenizer.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../util/Tokenizer.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../util/Tokenizer.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../util/Tokenizer.d

# Compiles file ../util/Zassert.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../util/Zassert.d
V:/temp/ns.dll/gccDeveloper-debug/../util/Zassert.o: ../util/Zassert.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../util/Zassert.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../util/Zassert.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../util/Zassert.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../util/Zassert.d

# Compiles file ../util/ZassertTemplate.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../util/ZassertTemplate.d
V:/temp/ns.dll/gccDeveloper-debug/../util/ZassertTemplate.o: ../util/ZassertTemplate.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../util/ZassertTemplate.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../util/ZassertTemplate.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../util/ZassertTemplate.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../util/ZassertTemplate.d

# Compiles file ../textrep/TRDescription.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../textrep/TRDescription.d
V:/temp/ns.dll/gccDeveloper-debug/../textrep/TRDescription.o: ../textrep/TRDescription.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../textrep/TRDescription.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../textrep/TRDescription.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../textrep/TRDescription.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../textrep/TRDescription.d

# Compiles file ../textrep/TRFactory.cpp for the Developer-debug configuration...
-include V:/temp/ns.dll/gccDeveloper-debug/../textrep/TRFactory.d
V:/temp/ns.dll/gccDeveloper-debug/../textrep/TRFactory.o: ../textrep/TRFactory.cpp
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -c ../textrep/TRFactory.cpp $(Developer-debug_Include_Path) -o V:/temp/ns.dll/gccDeveloper-debug/../textrep/TRFactory.o
	$(CPP_COMPILER) $(Developer-debug_Preprocessor_Definitions) $(Developer-debug_Compiler_Flags) -MM ../textrep/TRFactory.cpp $(Developer-debug_Include_Path) > V:/temp/ns.dll/gccDeveloper-debug/../textrep/TRFactory.d

# Builds the Developer-release configuration...
.PHONY: Developer-release
Developer-release: create_folders V:/temp/ns.dll/gccDeveloper-release/animating.o V:/temp/ns.dll/gccDeveloper-release/animation.o V:/temp/ns.dll/gccDeveloper-release/bmodels.o V:/temp/ns.dll/gccDeveloper-release/buttons.o V:/temp/ns.dll/gccDeveloper-release/cbase.o V:/temp/ns.dll/gccDeveloper-release/client.o V:/temp/ns.dll/gccDeveloper-release/combat.o V:/temp/ns.dll/gccDeveloper-release/doors.o V:/temp/ns.dll/gccDeveloper-release/effects.o V:/temp/ns.dll/gccDeveloper-release/egon.o V:/temp/ns.dll/gccDeveloper-release/explode.o V:/temp/ns.dll/gccDeveloper-release/func_break.o V:/temp/ns.dll/gccDeveloper-release/func_tank.o V:/temp/ns.dll/gccDeveloper-release/game.o V:/temp/ns.dll/gccDeveloper-release/gamerules.o V:/temp/ns.dll/gccDeveloper-release/gauss.o V:/temp/ns.dll/gccDeveloper-release/globals.o V:/temp/ns.dll/gccDeveloper-release/h_ai.o V:/temp/ns.dll/gccDeveloper-release/h_battery.o V:/temp/ns.dll/gccDeveloper-release/h_cycler.o V:/temp/ns.dll/gccDeveloper-release/h_export.o V:/temp/ns.dll/gccDeveloper-release/items.o V:/temp/ns.dll/gccDeveloper-release/lights.o V:/temp/ns.dll/gccDeveloper-release/maprules.o V:/temp/ns.dll/gccDeveloper-release/mpstubb.o V:/temp/ns.dll/gccDeveloper-release/multiplay_gamerules.o V:/temp/ns.dll/gccDeveloper-release/observer.o V:/temp/ns.dll/gccDeveloper-release/pathcorner.o V:/temp/ns.dll/gccDeveloper-release/plane.o V:/temp/ns.dll/gccDeveloper-release/plats.o V:/temp/ns.dll/gccDeveloper-release/player.o V:/temp/ns.dll/gccDeveloper-release/../pm_shared/pm_debug.o V:/temp/ns.dll/gccDeveloper-release/../pm_shared/pm_math.o V:/temp/ns.dll/gccDeveloper-release/../pm_shared/pm_shared.o V:/temp/ns.dll/gccDeveloper-release/satchel.o V:/temp/ns.dll/gccDeveloper-release/shotgun.o V:/temp/ns.dll/gccDeveloper-release/singleplay_gamerules.o V:/temp/ns.dll/gccDeveloper-release/skill.o V:/temp/ns.dll/gccDeveloper-release/sound.o V:/temp/ns.dll/gccDeveloper-release/soundent.o V:/temp/ns.dll/gccDeveloper-release/spectator.o V:/temp/ns.dll/gccDeveloper-release/squeakgrenade.o V:/temp/ns.dll/gccDeveloper-release/subs.o V:/temp/ns.dll/gccDeveloper-release/teamplay_gamerules.o V:/temp/ns.dll/gccDeveloper-release/triggers.o V:/temp/ns.dll/gccDeveloper-release/turret.o V:/temp/ns.dll/gccDeveloper-release/util.o V:/temp/ns.dll/gccDeveloper-release/../game_shared/voice_banmgr.o V:/temp/ns.dll/gccDeveloper-release/../game_shared/voice_gamemgr.o V:/temp/ns.dll/gccDeveloper-release/weapons.o V:/temp/ns.dll/gccDeveloper-release/world.o V:/temp/ns.dll/gccDeveloper-release/xen.o V:/temp/ns.dll/gccDeveloper-release/../mod/AnimationUtil.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienEquipment.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienTurret.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienWeapon.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAssert.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBaseBuildable.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBaseInfoLocation.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBuildable.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHCloakable.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHCombat.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHConsoleCommands.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHConstants.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHCurl.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHEntities.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHEntityHierarchy.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHGamerules.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHHive.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMapExtents.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMarineEquipment.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMarineTurret.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMarineWeapon.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMiniMap.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMovementUtil.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHNetworkMessages.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHNexusServer.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHNexusTunnelToClient.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHOrder.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPlayer.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPlayerUpgrade.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPushableBuildable.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHReinforceable.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHResearchManager.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHScriptManager.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHScriptServer.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHScriptShared.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSelectionHelper.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHServerPlayerData.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHServerUtil.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSharedMovementInfo.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSharedUtil.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSiegeTurret.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSoundListManager.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpawn.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpecials.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTeam.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTechNode.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTechSlotManager.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTechTree.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTurret.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHVisibleBlipList.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHVoiceHelper.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWeldable.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWorldUpdate.o V:/temp/ns.dll/gccDeveloper-release/../mod/CollisionChecker.o V:/temp/ns.dll/gccDeveloper-release/../mod/CollisionChecker_ServerOnly.o V:/temp/ns.dll/gccDeveloper-release/../mod/CollisionUtil.o V:/temp/ns.dll/gccDeveloper-release/../mod/NetworkMeter.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAcidRocketGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienAbilities.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBasePlayerWeapon.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBileBombGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBite.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBite2.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBlink.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBuildingGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHClaws.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHDevour.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHDivineWind.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHGrenade.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHGrenadeGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHHealingSpray.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHHeavyMachineGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHItemInfo.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHKnife.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMachineGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMetabolize.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMine.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParasiteGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPistol.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPrimalScream.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSonicGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpikeGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpitGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpores.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHStomp.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSwipe.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHUmbraGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWebSpinner.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWelder.o V:/temp/ns.dll/gccDeveloper-release/ggrenade.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleSystem.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleSystemEntity.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleSystemManager.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleTemplate.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleTemplateServer.o V:/temp/ns.dll/gccDeveloper-release/../util/Balance.o V:/temp/ns.dll/gccDeveloper-release/../util/Checksum.o V:/temp/ns.dll/gccDeveloper-release/../util/GammaTable.o V:/temp/ns.dll/gccDeveloper-release/../util/LinuxSupport.o V:/temp/ns.dll/gccDeveloper-release/../util/Mat3.o V:/temp/ns.dll/gccDeveloper-release/../util/MathUtil.o V:/temp/ns.dll/gccDeveloper-release/../util/Quat.o V:/temp/ns.dll/gccDeveloper-release/../util/Stacktrace.o V:/temp/ns.dll/gccDeveloper-release/../util/STLUtil.o V:/temp/ns.dll/gccDeveloper-release/../util/Tokenizer.o V:/temp/ns.dll/gccDeveloper-release/../util/Zassert.o V:/temp/ns.dll/gccDeveloper-release/../util/ZassertTemplate.o V:/temp/ns.dll/gccDeveloper-release/../textrep/TRDescription.o V:/temp/ns.dll/gccDeveloper-release/../textrep/TRFactory.o 
	g++ -fPIC -shared -Wl,-soname,libns.dll.so -o V:/temp/ns.dll/gccDeveloper-release/libns.dll.so V:/temp/ns.dll/gccDeveloper-release/animating.o V:/temp/ns.dll/gccDeveloper-release/animation.o V:/temp/ns.dll/gccDeveloper-release/bmodels.o V:/temp/ns.dll/gccDeveloper-release/buttons.o V:/temp/ns.dll/gccDeveloper-release/cbase.o V:/temp/ns.dll/gccDeveloper-release/client.o V:/temp/ns.dll/gccDeveloper-release/combat.o V:/temp/ns.dll/gccDeveloper-release/doors.o V:/temp/ns.dll/gccDeveloper-release/effects.o V:/temp/ns.dll/gccDeveloper-release/egon.o V:/temp/ns.dll/gccDeveloper-release/explode.o V:/temp/ns.dll/gccDeveloper-release/func_break.o V:/temp/ns.dll/gccDeveloper-release/func_tank.o V:/temp/ns.dll/gccDeveloper-release/game.o V:/temp/ns.dll/gccDeveloper-release/gamerules.o V:/temp/ns.dll/gccDeveloper-release/gauss.o V:/temp/ns.dll/gccDeveloper-release/globals.o V:/temp/ns.dll/gccDeveloper-release/h_ai.o V:/temp/ns.dll/gccDeveloper-release/h_battery.o V:/temp/ns.dll/gccDeveloper-release/h_cycler.o V:/temp/ns.dll/gccDeveloper-release/h_export.o V:/temp/ns.dll/gccDeveloper-release/items.o V:/temp/ns.dll/gccDeveloper-release/lights.o V:/temp/ns.dll/gccDeveloper-release/maprules.o V:/temp/ns.dll/gccDeveloper-release/mpstubb.o V:/temp/ns.dll/gccDeveloper-release/multiplay_gamerules.o V:/temp/ns.dll/gccDeveloper-release/observer.o V:/temp/ns.dll/gccDeveloper-release/pathcorner.o V:/temp/ns.dll/gccDeveloper-release/plane.o V:/temp/ns.dll/gccDeveloper-release/plats.o V:/temp/ns.dll/gccDeveloper-release/player.o V:/temp/ns.dll/gccDeveloper-release/../pm_shared/pm_debug.o V:/temp/ns.dll/gccDeveloper-release/../pm_shared/pm_math.o V:/temp/ns.dll/gccDeveloper-release/../pm_shared/pm_shared.o V:/temp/ns.dll/gccDeveloper-release/satchel.o V:/temp/ns.dll/gccDeveloper-release/shotgun.o V:/temp/ns.dll/gccDeveloper-release/singleplay_gamerules.o V:/temp/ns.dll/gccDeveloper-release/skill.o V:/temp/ns.dll/gccDeveloper-release/sound.o V:/temp/ns.dll/gccDeveloper-release/soundent.o V:/temp/ns.dll/gccDeveloper-release/spectator.o V:/temp/ns.dll/gccDeveloper-release/squeakgrenade.o V:/temp/ns.dll/gccDeveloper-release/subs.o V:/temp/ns.dll/gccDeveloper-release/teamplay_gamerules.o V:/temp/ns.dll/gccDeveloper-release/triggers.o V:/temp/ns.dll/gccDeveloper-release/turret.o V:/temp/ns.dll/gccDeveloper-release/util.o V:/temp/ns.dll/gccDeveloper-release/../game_shared/voice_banmgr.o V:/temp/ns.dll/gccDeveloper-release/../game_shared/voice_gamemgr.o V:/temp/ns.dll/gccDeveloper-release/weapons.o V:/temp/ns.dll/gccDeveloper-release/world.o V:/temp/ns.dll/gccDeveloper-release/xen.o V:/temp/ns.dll/gccDeveloper-release/../mod/AnimationUtil.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienEquipment.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienTurret.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienWeapon.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAssert.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBaseBuildable.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBaseInfoLocation.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBuildable.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHCloakable.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHCombat.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHConsoleCommands.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHConstants.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHCurl.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHEntities.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHEntityHierarchy.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHGamerules.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHHive.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMapExtents.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMarineEquipment.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMarineTurret.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMarineWeapon.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMiniMap.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMovementUtil.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHNetworkMessages.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHNexusServer.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHNexusTunnelToClient.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHOrder.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPlayer.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPlayerUpgrade.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPushableBuildable.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHReinforceable.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHResearchManager.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHScriptManager.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHScriptServer.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHScriptShared.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSelectionHelper.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHServerPlayerData.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHServerUtil.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSharedMovementInfo.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSharedUtil.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSiegeTurret.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSoundListManager.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpawn.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpecials.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTeam.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTechNode.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTechSlotManager.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTechTree.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTurret.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHVisibleBlipList.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHVoiceHelper.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWeldable.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWorldUpdate.o V:/temp/ns.dll/gccDeveloper-release/../mod/CollisionChecker.o V:/temp/ns.dll/gccDeveloper-release/../mod/CollisionChecker_ServerOnly.o V:/temp/ns.dll/gccDeveloper-release/../mod/CollisionUtil.o V:/temp/ns.dll/gccDeveloper-release/../mod/NetworkMeter.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAcidRocketGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienAbilities.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBasePlayerWeapon.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBileBombGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBite.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBite2.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBlink.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBuildingGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHClaws.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHDevour.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHDivineWind.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHGrenade.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHGrenadeGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHHealingSpray.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHHeavyMachineGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHItemInfo.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHKnife.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMachineGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMetabolize.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMine.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParasiteGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPistol.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPrimalScream.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSonicGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpikeGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpitGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpores.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHStomp.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSwipe.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHUmbraGun.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWebSpinner.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWelder.o V:/temp/ns.dll/gccDeveloper-release/ggrenade.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleSystem.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleSystemEntity.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleSystemManager.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleTemplate.o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleTemplateServer.o V:/temp/ns.dll/gccDeveloper-release/../util/Balance.o V:/temp/ns.dll/gccDeveloper-release/../util/Checksum.o V:/temp/ns.dll/gccDeveloper-release/../util/GammaTable.o V:/temp/ns.dll/gccDeveloper-release/../util/LinuxSupport.o V:/temp/ns.dll/gccDeveloper-release/../util/Mat3.o V:/temp/ns.dll/gccDeveloper-release/../util/MathUtil.o V:/temp/ns.dll/gccDeveloper-release/../util/Quat.o V:/temp/ns.dll/gccDeveloper-release/../util/Stacktrace.o V:/temp/ns.dll/gccDeveloper-release/../util/STLUtil.o V:/temp/ns.dll/gccDeveloper-release/../util/Tokenizer.o V:/temp/ns.dll/gccDeveloper-release/../util/Zassert.o V:/temp/ns.dll/gccDeveloper-release/../util/ZassertTemplate.o V:/temp/ns.dll/gccDeveloper-release/../textrep/TRDescription.o V:/temp/ns.dll/gccDeveloper-release/../textrep/TRFactory.o  $(Developer-release_Implicitly_Linked_Objects)

# Compiles file animating.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/animating.d
V:/temp/ns.dll/gccDeveloper-release/animating.o: animating.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c animating.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/animating.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM animating.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/animating.d

# Compiles file animation.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/animation.d
V:/temp/ns.dll/gccDeveloper-release/animation.o: animation.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c animation.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/animation.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM animation.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/animation.d

# Compiles file bmodels.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/bmodels.d
V:/temp/ns.dll/gccDeveloper-release/bmodels.o: bmodels.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c bmodels.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/bmodels.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM bmodels.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/bmodels.d

# Compiles file buttons.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/buttons.d
V:/temp/ns.dll/gccDeveloper-release/buttons.o: buttons.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c buttons.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/buttons.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM buttons.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/buttons.d

# Compiles file cbase.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/cbase.d
V:/temp/ns.dll/gccDeveloper-release/cbase.o: cbase.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c cbase.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/cbase.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM cbase.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/cbase.d

# Compiles file client.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/client.d
V:/temp/ns.dll/gccDeveloper-release/client.o: client.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c client.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/client.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM client.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/client.d

# Compiles file combat.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/combat.d
V:/temp/ns.dll/gccDeveloper-release/combat.o: combat.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c combat.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/combat.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM combat.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/combat.d

# Compiles file doors.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/doors.d
V:/temp/ns.dll/gccDeveloper-release/doors.o: doors.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c doors.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/doors.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM doors.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/doors.d

# Compiles file effects.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/effects.d
V:/temp/ns.dll/gccDeveloper-release/effects.o: effects.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c effects.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/effects.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM effects.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/effects.d

# Compiles file egon.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/egon.d
V:/temp/ns.dll/gccDeveloper-release/egon.o: egon.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c egon.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/egon.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM egon.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/egon.d

# Compiles file explode.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/explode.d
V:/temp/ns.dll/gccDeveloper-release/explode.o: explode.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c explode.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/explode.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM explode.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/explode.d

# Compiles file func_break.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/func_break.d
V:/temp/ns.dll/gccDeveloper-release/func_break.o: func_break.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c func_break.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/func_break.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM func_break.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/func_break.d

# Compiles file func_tank.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/func_tank.d
V:/temp/ns.dll/gccDeveloper-release/func_tank.o: func_tank.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c func_tank.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/func_tank.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM func_tank.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/func_tank.d

# Compiles file game.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/game.d
V:/temp/ns.dll/gccDeveloper-release/game.o: game.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c game.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/game.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM game.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/game.d

# Compiles file gamerules.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/gamerules.d
V:/temp/ns.dll/gccDeveloper-release/gamerules.o: gamerules.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c gamerules.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/gamerules.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM gamerules.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/gamerules.d

# Compiles file gauss.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/gauss.d
V:/temp/ns.dll/gccDeveloper-release/gauss.o: gauss.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c gauss.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/gauss.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM gauss.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/gauss.d

# Compiles file globals.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/globals.d
V:/temp/ns.dll/gccDeveloper-release/globals.o: globals.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c globals.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/globals.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM globals.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/globals.d

# Compiles file h_ai.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/h_ai.d
V:/temp/ns.dll/gccDeveloper-release/h_ai.o: h_ai.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c h_ai.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/h_ai.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM h_ai.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/h_ai.d

# Compiles file h_battery.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/h_battery.d
V:/temp/ns.dll/gccDeveloper-release/h_battery.o: h_battery.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c h_battery.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/h_battery.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM h_battery.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/h_battery.d

# Compiles file h_cycler.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/h_cycler.d
V:/temp/ns.dll/gccDeveloper-release/h_cycler.o: h_cycler.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c h_cycler.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/h_cycler.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM h_cycler.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/h_cycler.d

# Compiles file h_export.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/h_export.d
V:/temp/ns.dll/gccDeveloper-release/h_export.o: h_export.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c h_export.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/h_export.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM h_export.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/h_export.d

# Compiles file items.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/items.d
V:/temp/ns.dll/gccDeveloper-release/items.o: items.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c items.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/items.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM items.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/items.d

# Compiles file lights.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/lights.d
V:/temp/ns.dll/gccDeveloper-release/lights.o: lights.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c lights.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/lights.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM lights.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/lights.d

# Compiles file maprules.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/maprules.d
V:/temp/ns.dll/gccDeveloper-release/maprules.o: maprules.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c maprules.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/maprules.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM maprules.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/maprules.d

# Compiles file mpstubb.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/mpstubb.d
V:/temp/ns.dll/gccDeveloper-release/mpstubb.o: mpstubb.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c mpstubb.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/mpstubb.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM mpstubb.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/mpstubb.d

# Compiles file multiplay_gamerules.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/multiplay_gamerules.d
V:/temp/ns.dll/gccDeveloper-release/multiplay_gamerules.o: multiplay_gamerules.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c multiplay_gamerules.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/multiplay_gamerules.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM multiplay_gamerules.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/multiplay_gamerules.d

# Compiles file observer.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/observer.d
V:/temp/ns.dll/gccDeveloper-release/observer.o: observer.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c observer.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/observer.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM observer.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/observer.d

# Compiles file pathcorner.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/pathcorner.d
V:/temp/ns.dll/gccDeveloper-release/pathcorner.o: pathcorner.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c pathcorner.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/pathcorner.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM pathcorner.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/pathcorner.d

# Compiles file plane.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/plane.d
V:/temp/ns.dll/gccDeveloper-release/plane.o: plane.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c plane.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/plane.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM plane.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/plane.d

# Compiles file plats.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/plats.d
V:/temp/ns.dll/gccDeveloper-release/plats.o: plats.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c plats.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/plats.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM plats.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/plats.d

# Compiles file player.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/player.d
V:/temp/ns.dll/gccDeveloper-release/player.o: player.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c player.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/player.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM player.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/player.d

# Compiles file ../pm_shared/pm_debug.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../pm_shared/pm_debug.d
V:/temp/ns.dll/gccDeveloper-release/../pm_shared/pm_debug.o: ../pm_shared/pm_debug.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../pm_shared/pm_debug.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../pm_shared/pm_debug.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../pm_shared/pm_debug.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../pm_shared/pm_debug.d

# Compiles file ../pm_shared/pm_math.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../pm_shared/pm_math.d
V:/temp/ns.dll/gccDeveloper-release/../pm_shared/pm_math.o: ../pm_shared/pm_math.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../pm_shared/pm_math.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../pm_shared/pm_math.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../pm_shared/pm_math.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../pm_shared/pm_math.d

# Compiles file ../pm_shared/pm_shared.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../pm_shared/pm_shared.d
V:/temp/ns.dll/gccDeveloper-release/../pm_shared/pm_shared.o: ../pm_shared/pm_shared.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../pm_shared/pm_shared.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../pm_shared/pm_shared.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../pm_shared/pm_shared.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../pm_shared/pm_shared.d

# Compiles file satchel.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/satchel.d
V:/temp/ns.dll/gccDeveloper-release/satchel.o: satchel.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c satchel.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/satchel.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM satchel.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/satchel.d

# Compiles file shotgun.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/shotgun.d
V:/temp/ns.dll/gccDeveloper-release/shotgun.o: shotgun.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c shotgun.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/shotgun.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM shotgun.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/shotgun.d

# Compiles file singleplay_gamerules.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/singleplay_gamerules.d
V:/temp/ns.dll/gccDeveloper-release/singleplay_gamerules.o: singleplay_gamerules.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c singleplay_gamerules.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/singleplay_gamerules.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM singleplay_gamerules.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/singleplay_gamerules.d

# Compiles file skill.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/skill.d
V:/temp/ns.dll/gccDeveloper-release/skill.o: skill.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c skill.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/skill.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM skill.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/skill.d

# Compiles file sound.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/sound.d
V:/temp/ns.dll/gccDeveloper-release/sound.o: sound.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c sound.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/sound.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM sound.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/sound.d

# Compiles file soundent.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/soundent.d
V:/temp/ns.dll/gccDeveloper-release/soundent.o: soundent.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c soundent.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/soundent.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM soundent.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/soundent.d

# Compiles file spectator.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/spectator.d
V:/temp/ns.dll/gccDeveloper-release/spectator.o: spectator.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c spectator.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/spectator.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM spectator.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/spectator.d

# Compiles file squeakgrenade.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/squeakgrenade.d
V:/temp/ns.dll/gccDeveloper-release/squeakgrenade.o: squeakgrenade.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c squeakgrenade.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/squeakgrenade.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM squeakgrenade.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/squeakgrenade.d

# Compiles file subs.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/subs.d
V:/temp/ns.dll/gccDeveloper-release/subs.o: subs.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c subs.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/subs.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM subs.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/subs.d

# Compiles file teamplay_gamerules.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/teamplay_gamerules.d
V:/temp/ns.dll/gccDeveloper-release/teamplay_gamerules.o: teamplay_gamerules.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c teamplay_gamerules.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/teamplay_gamerules.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM teamplay_gamerules.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/teamplay_gamerules.d

# Compiles file triggers.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/triggers.d
V:/temp/ns.dll/gccDeveloper-release/triggers.o: triggers.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c triggers.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/triggers.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM triggers.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/triggers.d

# Compiles file turret.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/turret.d
V:/temp/ns.dll/gccDeveloper-release/turret.o: turret.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c turret.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/turret.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM turret.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/turret.d

# Compiles file util.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/util.d
V:/temp/ns.dll/gccDeveloper-release/util.o: util.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c util.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/util.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM util.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/util.d

# Compiles file ../game_shared/voice_banmgr.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../game_shared/voice_banmgr.d
V:/temp/ns.dll/gccDeveloper-release/../game_shared/voice_banmgr.o: ../game_shared/voice_banmgr.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../game_shared/voice_banmgr.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../game_shared/voice_banmgr.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../game_shared/voice_banmgr.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../game_shared/voice_banmgr.d

# Compiles file ../game_shared/voice_gamemgr.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../game_shared/voice_gamemgr.d
V:/temp/ns.dll/gccDeveloper-release/../game_shared/voice_gamemgr.o: ../game_shared/voice_gamemgr.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../game_shared/voice_gamemgr.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../game_shared/voice_gamemgr.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../game_shared/voice_gamemgr.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../game_shared/voice_gamemgr.d

# Compiles file weapons.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/weapons.d
V:/temp/ns.dll/gccDeveloper-release/weapons.o: weapons.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c weapons.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/weapons.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM weapons.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/weapons.d

# Compiles file world.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/world.d
V:/temp/ns.dll/gccDeveloper-release/world.o: world.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c world.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/world.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM world.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/world.d

# Compiles file xen.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/xen.d
V:/temp/ns.dll/gccDeveloper-release/xen.o: xen.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c xen.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/xen.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM xen.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/xen.d

# Compiles file ../mod/AnimationUtil.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AnimationUtil.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AnimationUtil.o: ../mod/AnimationUtil.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AnimationUtil.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AnimationUtil.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AnimationUtil.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AnimationUtil.d

# Compiles file ../mod/AvHAlienEquipment.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienEquipment.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienEquipment.o: ../mod/AvHAlienEquipment.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHAlienEquipment.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienEquipment.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHAlienEquipment.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienEquipment.d

# Compiles file ../mod/AvHAlienTurret.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienTurret.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienTurret.o: ../mod/AvHAlienTurret.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHAlienTurret.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienTurret.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHAlienTurret.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienTurret.d

# Compiles file ../mod/AvHAlienWeapon.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienWeapon.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienWeapon.o: ../mod/AvHAlienWeapon.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHAlienWeapon.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienWeapon.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHAlienWeapon.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienWeapon.d

# Compiles file ../mod/AvHAssert.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAssert.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAssert.o: ../mod/AvHAssert.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHAssert.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAssert.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHAssert.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAssert.d

# Compiles file ../mod/AvHBaseBuildable.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBaseBuildable.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBaseBuildable.o: ../mod/AvHBaseBuildable.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHBaseBuildable.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBaseBuildable.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHBaseBuildable.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBaseBuildable.d

# Compiles file ../mod/AvHBaseInfoLocation.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBaseInfoLocation.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBaseInfoLocation.o: ../mod/AvHBaseInfoLocation.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHBaseInfoLocation.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBaseInfoLocation.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHBaseInfoLocation.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBaseInfoLocation.d

# Compiles file ../mod/AvHBuildable.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBuildable.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBuildable.o: ../mod/AvHBuildable.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHBuildable.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBuildable.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHBuildable.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBuildable.d

# Compiles file ../mod/AvHCloakable.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHCloakable.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHCloakable.o: ../mod/AvHCloakable.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHCloakable.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHCloakable.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHCloakable.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHCloakable.d

# Compiles file ../mod/AvHCombat.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHCombat.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHCombat.o: ../mod/AvHCombat.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHCombat.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHCombat.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHCombat.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHCombat.d

# Compiles file ../mod/AvHConsoleCommands.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHConsoleCommands.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHConsoleCommands.o: ../mod/AvHConsoleCommands.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHConsoleCommands.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHConsoleCommands.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHConsoleCommands.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHConsoleCommands.d

# Compiles file ../mod/AvHConstants.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHConstants.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHConstants.o: ../mod/AvHConstants.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHConstants.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHConstants.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHConstants.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHConstants.d

# Compiles file ../mod/AvHCurl.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHCurl.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHCurl.o: ../mod/AvHCurl.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHCurl.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHCurl.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHCurl.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHCurl.d

# Compiles file ../mod/AvHEntities.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHEntities.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHEntities.o: ../mod/AvHEntities.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHEntities.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHEntities.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHEntities.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHEntities.d

# Compiles file ../mod/AvHEntityHierarchy.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHEntityHierarchy.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHEntityHierarchy.o: ../mod/AvHEntityHierarchy.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHEntityHierarchy.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHEntityHierarchy.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHEntityHierarchy.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHEntityHierarchy.d

# Compiles file ../mod/AvHGamerules.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHGamerules.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHGamerules.o: ../mod/AvHGamerules.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHGamerules.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHGamerules.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHGamerules.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHGamerules.d

# Compiles file ../mod/AvHHive.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHHive.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHHive.o: ../mod/AvHHive.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHHive.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHHive.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHHive.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHHive.d

# Compiles file ../mod/AvHMapExtents.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMapExtents.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMapExtents.o: ../mod/AvHMapExtents.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHMapExtents.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMapExtents.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHMapExtents.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMapExtents.d

# Compiles file ../mod/AvHMarineEquipment.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMarineEquipment.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMarineEquipment.o: ../mod/AvHMarineEquipment.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHMarineEquipment.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMarineEquipment.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHMarineEquipment.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMarineEquipment.d

# Compiles file ../mod/AvHMarineTurret.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMarineTurret.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMarineTurret.o: ../mod/AvHMarineTurret.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHMarineTurret.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMarineTurret.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHMarineTurret.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMarineTurret.d

# Compiles file ../mod/AvHMarineWeapon.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMarineWeapon.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMarineWeapon.o: ../mod/AvHMarineWeapon.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHMarineWeapon.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMarineWeapon.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHMarineWeapon.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMarineWeapon.d

# Compiles file ../mod/AvHMiniMap.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMiniMap.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMiniMap.o: ../mod/AvHMiniMap.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHMiniMap.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMiniMap.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHMiniMap.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMiniMap.d

# Compiles file ../mod/AvHMovementUtil.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMovementUtil.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMovementUtil.o: ../mod/AvHMovementUtil.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHMovementUtil.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMovementUtil.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHMovementUtil.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMovementUtil.d

# Compiles file ../mod/AvHNetworkMessages.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHNetworkMessages.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHNetworkMessages.o: ../mod/AvHNetworkMessages.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHNetworkMessages.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHNetworkMessages.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHNetworkMessages.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHNetworkMessages.d

# Compiles file ../mod/AvHNexusServer.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHNexusServer.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHNexusServer.o: ../mod/AvHNexusServer.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHNexusServer.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHNexusServer.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHNexusServer.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHNexusServer.d

# Compiles file ../mod/AvHNexusTunnelToClient.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHNexusTunnelToClient.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHNexusTunnelToClient.o: ../mod/AvHNexusTunnelToClient.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHNexusTunnelToClient.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHNexusTunnelToClient.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHNexusTunnelToClient.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHNexusTunnelToClient.d

# Compiles file ../mod/AvHOrder.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHOrder.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHOrder.o: ../mod/AvHOrder.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHOrder.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHOrder.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHOrder.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHOrder.d

# Compiles file ../mod/AvHPlayer.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPlayer.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPlayer.o: ../mod/AvHPlayer.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHPlayer.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPlayer.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHPlayer.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPlayer.d

# Compiles file ../mod/AvHPlayerUpgrade.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPlayerUpgrade.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPlayerUpgrade.o: ../mod/AvHPlayerUpgrade.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHPlayerUpgrade.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPlayerUpgrade.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHPlayerUpgrade.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPlayerUpgrade.d

# Compiles file ../mod/AvHPushableBuildable.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPushableBuildable.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPushableBuildable.o: ../mod/AvHPushableBuildable.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHPushableBuildable.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPushableBuildable.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHPushableBuildable.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPushableBuildable.d

# Compiles file ../mod/AvHReinforceable.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHReinforceable.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHReinforceable.o: ../mod/AvHReinforceable.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHReinforceable.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHReinforceable.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHReinforceable.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHReinforceable.d

# Compiles file ../mod/AvHResearchManager.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHResearchManager.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHResearchManager.o: ../mod/AvHResearchManager.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHResearchManager.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHResearchManager.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHResearchManager.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHResearchManager.d

# Compiles file ../mod/AvHScriptManager.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHScriptManager.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHScriptManager.o: ../mod/AvHScriptManager.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHScriptManager.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHScriptManager.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHScriptManager.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHScriptManager.d

# Compiles file ../mod/AvHScriptServer.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHScriptServer.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHScriptServer.o: ../mod/AvHScriptServer.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHScriptServer.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHScriptServer.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHScriptServer.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHScriptServer.d

# Compiles file ../mod/AvHScriptShared.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHScriptShared.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHScriptShared.o: ../mod/AvHScriptShared.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHScriptShared.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHScriptShared.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHScriptShared.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHScriptShared.d

# Compiles file ../mod/AvHSelectionHelper.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSelectionHelper.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSelectionHelper.o: ../mod/AvHSelectionHelper.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHSelectionHelper.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSelectionHelper.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHSelectionHelper.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSelectionHelper.d

# Compiles file ../mod/AvHServerPlayerData.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHServerPlayerData.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHServerPlayerData.o: ../mod/AvHServerPlayerData.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHServerPlayerData.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHServerPlayerData.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHServerPlayerData.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHServerPlayerData.d

# Compiles file ../mod/AvHServerUtil.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHServerUtil.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHServerUtil.o: ../mod/AvHServerUtil.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHServerUtil.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHServerUtil.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHServerUtil.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHServerUtil.d

# Compiles file ../mod/AvHSharedMovementInfo.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSharedMovementInfo.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSharedMovementInfo.o: ../mod/AvHSharedMovementInfo.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHSharedMovementInfo.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSharedMovementInfo.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHSharedMovementInfo.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSharedMovementInfo.d

# Compiles file ../mod/AvHSharedUtil.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSharedUtil.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSharedUtil.o: ../mod/AvHSharedUtil.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHSharedUtil.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSharedUtil.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHSharedUtil.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSharedUtil.d

# Compiles file ../mod/AvHSiegeTurret.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSiegeTurret.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSiegeTurret.o: ../mod/AvHSiegeTurret.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHSiegeTurret.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSiegeTurret.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHSiegeTurret.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSiegeTurret.d

# Compiles file ../mod/AvHSoundListManager.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSoundListManager.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSoundListManager.o: ../mod/AvHSoundListManager.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHSoundListManager.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSoundListManager.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHSoundListManager.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSoundListManager.d

# Compiles file ../mod/AvHSpawn.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpawn.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpawn.o: ../mod/AvHSpawn.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHSpawn.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpawn.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHSpawn.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpawn.d

# Compiles file ../mod/AvHSpecials.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpecials.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpecials.o: ../mod/AvHSpecials.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHSpecials.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpecials.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHSpecials.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpecials.d

# Compiles file ../mod/AvHTeam.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTeam.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTeam.o: ../mod/AvHTeam.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHTeam.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTeam.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHTeam.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTeam.d

# Compiles file ../mod/AvHTechNode.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTechNode.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTechNode.o: ../mod/AvHTechNode.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHTechNode.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTechNode.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHTechNode.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTechNode.d

# Compiles file ../mod/AvHTechSlotManager.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTechSlotManager.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTechSlotManager.o: ../mod/AvHTechSlotManager.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHTechSlotManager.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTechSlotManager.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHTechSlotManager.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTechSlotManager.d

# Compiles file ../mod/AvHTechTree.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTechTree.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTechTree.o: ../mod/AvHTechTree.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHTechTree.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTechTree.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHTechTree.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTechTree.d

# Compiles file ../mod/AvHTurret.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTurret.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTurret.o: ../mod/AvHTurret.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHTurret.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTurret.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHTurret.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHTurret.d

# Compiles file ../mod/AvHVisibleBlipList.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHVisibleBlipList.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHVisibleBlipList.o: ../mod/AvHVisibleBlipList.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHVisibleBlipList.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHVisibleBlipList.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHVisibleBlipList.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHVisibleBlipList.d

# Compiles file ../mod/AvHVoiceHelper.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHVoiceHelper.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHVoiceHelper.o: ../mod/AvHVoiceHelper.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHVoiceHelper.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHVoiceHelper.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHVoiceHelper.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHVoiceHelper.d

# Compiles file ../mod/AvHWeldable.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWeldable.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWeldable.o: ../mod/AvHWeldable.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHWeldable.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWeldable.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHWeldable.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWeldable.d

# Compiles file ../mod/AvHWorldUpdate.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWorldUpdate.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWorldUpdate.o: ../mod/AvHWorldUpdate.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHWorldUpdate.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWorldUpdate.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHWorldUpdate.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWorldUpdate.d

# Compiles file ../mod/CollisionChecker.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/CollisionChecker.d
V:/temp/ns.dll/gccDeveloper-release/../mod/CollisionChecker.o: ../mod/CollisionChecker.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/CollisionChecker.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/CollisionChecker.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/CollisionChecker.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/CollisionChecker.d

# Compiles file ../mod/CollisionChecker_ServerOnly.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/CollisionChecker_ServerOnly.d
V:/temp/ns.dll/gccDeveloper-release/../mod/CollisionChecker_ServerOnly.o: ../mod/CollisionChecker_ServerOnly.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/CollisionChecker_ServerOnly.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/CollisionChecker_ServerOnly.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/CollisionChecker_ServerOnly.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/CollisionChecker_ServerOnly.d

# Compiles file ../mod/CollisionUtil.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/CollisionUtil.d
V:/temp/ns.dll/gccDeveloper-release/../mod/CollisionUtil.o: ../mod/CollisionUtil.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/CollisionUtil.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/CollisionUtil.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/CollisionUtil.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/CollisionUtil.d

# Compiles file ../mod/NetworkMeter.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/NetworkMeter.d
V:/temp/ns.dll/gccDeveloper-release/../mod/NetworkMeter.o: ../mod/NetworkMeter.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/NetworkMeter.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/NetworkMeter.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/NetworkMeter.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/NetworkMeter.d

# Compiles file ../mod/AvHAcidRocketGun.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAcidRocketGun.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAcidRocketGun.o: ../mod/AvHAcidRocketGun.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHAcidRocketGun.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAcidRocketGun.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHAcidRocketGun.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAcidRocketGun.d

# Compiles file ../mod/AvHAlienAbilities.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienAbilities.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienAbilities.o: ../mod/AvHAlienAbilities.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHAlienAbilities.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienAbilities.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHAlienAbilities.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHAlienAbilities.d

# Compiles file ../mod/AvHBasePlayerWeapon.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBasePlayerWeapon.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBasePlayerWeapon.o: ../mod/AvHBasePlayerWeapon.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHBasePlayerWeapon.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBasePlayerWeapon.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHBasePlayerWeapon.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBasePlayerWeapon.d

# Compiles file ../mod/AvHBileBombGun.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBileBombGun.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBileBombGun.o: ../mod/AvHBileBombGun.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHBileBombGun.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBileBombGun.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHBileBombGun.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBileBombGun.d

# Compiles file ../mod/AvHBite.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBite.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBite.o: ../mod/AvHBite.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHBite.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBite.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHBite.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBite.d

# Compiles file ../mod/AvHBite2.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBite2.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBite2.o: ../mod/AvHBite2.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHBite2.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBite2.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHBite2.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBite2.d

# Compiles file ../mod/AvHBlink.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBlink.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBlink.o: ../mod/AvHBlink.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHBlink.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBlink.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHBlink.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBlink.d

# Compiles file ../mod/AvHBuildingGun.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBuildingGun.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBuildingGun.o: ../mod/AvHBuildingGun.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHBuildingGun.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBuildingGun.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHBuildingGun.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHBuildingGun.d

# Compiles file ../mod/AvHClaws.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHClaws.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHClaws.o: ../mod/AvHClaws.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHClaws.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHClaws.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHClaws.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHClaws.d

# Compiles file ../mod/AvHDevour.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHDevour.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHDevour.o: ../mod/AvHDevour.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHDevour.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHDevour.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHDevour.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHDevour.d

# Compiles file ../mod/AvHDivineWind.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHDivineWind.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHDivineWind.o: ../mod/AvHDivineWind.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHDivineWind.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHDivineWind.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHDivineWind.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHDivineWind.d

# Compiles file ../mod/AvHGrenade.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHGrenade.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHGrenade.o: ../mod/AvHGrenade.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHGrenade.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHGrenade.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHGrenade.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHGrenade.d

# Compiles file ../mod/AvHGrenadeGun.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHGrenadeGun.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHGrenadeGun.o: ../mod/AvHGrenadeGun.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHGrenadeGun.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHGrenadeGun.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHGrenadeGun.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHGrenadeGun.d

# Compiles file ../mod/AvHHealingSpray.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHHealingSpray.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHHealingSpray.o: ../mod/AvHHealingSpray.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHHealingSpray.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHHealingSpray.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHHealingSpray.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHHealingSpray.d

# Compiles file ../mod/AvHHeavyMachineGun.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHHeavyMachineGun.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHHeavyMachineGun.o: ../mod/AvHHeavyMachineGun.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHHeavyMachineGun.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHHeavyMachineGun.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHHeavyMachineGun.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHHeavyMachineGun.d

# Compiles file ../mod/AvHItemInfo.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHItemInfo.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHItemInfo.o: ../mod/AvHItemInfo.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHItemInfo.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHItemInfo.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHItemInfo.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHItemInfo.d

# Compiles file ../mod/AvHKnife.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHKnife.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHKnife.o: ../mod/AvHKnife.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHKnife.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHKnife.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHKnife.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHKnife.d

# Compiles file ../mod/AvHMachineGun.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMachineGun.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMachineGun.o: ../mod/AvHMachineGun.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHMachineGun.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMachineGun.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHMachineGun.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMachineGun.d

# Compiles file ../mod/AvHMetabolize.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMetabolize.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMetabolize.o: ../mod/AvHMetabolize.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHMetabolize.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMetabolize.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHMetabolize.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMetabolize.d

# Compiles file ../mod/AvHMine.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMine.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMine.o: ../mod/AvHMine.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHMine.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMine.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHMine.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHMine.d

# Compiles file ../mod/AvHParasiteGun.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParasiteGun.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParasiteGun.o: ../mod/AvHParasiteGun.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHParasiteGun.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParasiteGun.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHParasiteGun.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParasiteGun.d

# Compiles file ../mod/AvHPistol.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPistol.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPistol.o: ../mod/AvHPistol.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHPistol.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPistol.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHPistol.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPistol.d

# Compiles file ../mod/AvHPrimalScream.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPrimalScream.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPrimalScream.o: ../mod/AvHPrimalScream.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHPrimalScream.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPrimalScream.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHPrimalScream.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHPrimalScream.d

# Compiles file ../mod/AvHSonicGun.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSonicGun.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSonicGun.o: ../mod/AvHSonicGun.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHSonicGun.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSonicGun.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHSonicGun.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSonicGun.d

# Compiles file ../mod/AvHSpikeGun.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpikeGun.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpikeGun.o: ../mod/AvHSpikeGun.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHSpikeGun.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpikeGun.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHSpikeGun.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpikeGun.d

# Compiles file ../mod/AvHSpitGun.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpitGun.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpitGun.o: ../mod/AvHSpitGun.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHSpitGun.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpitGun.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHSpitGun.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpitGun.d

# Compiles file ../mod/AvHSpores.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpores.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpores.o: ../mod/AvHSpores.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHSpores.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpores.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHSpores.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSpores.d

# Compiles file ../mod/AvHStomp.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHStomp.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHStomp.o: ../mod/AvHStomp.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHStomp.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHStomp.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHStomp.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHStomp.d

# Compiles file ../mod/AvHSwipe.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSwipe.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSwipe.o: ../mod/AvHSwipe.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHSwipe.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSwipe.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHSwipe.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHSwipe.d

# Compiles file ../mod/AvHUmbraGun.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHUmbraGun.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHUmbraGun.o: ../mod/AvHUmbraGun.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHUmbraGun.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHUmbraGun.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHUmbraGun.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHUmbraGun.d

# Compiles file ../mod/AvHWebSpinner.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWebSpinner.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWebSpinner.o: ../mod/AvHWebSpinner.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHWebSpinner.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWebSpinner.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHWebSpinner.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWebSpinner.d

# Compiles file ../mod/AvHWelder.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWelder.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWelder.o: ../mod/AvHWelder.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHWelder.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWelder.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHWelder.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHWelder.d

# Compiles file ggrenade.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/ggrenade.d
V:/temp/ns.dll/gccDeveloper-release/ggrenade.o: ggrenade.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ggrenade.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/ggrenade.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ggrenade.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/ggrenade.d

# Compiles file ../mod/AvHParticleSystem.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleSystem.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleSystem.o: ../mod/AvHParticleSystem.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHParticleSystem.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleSystem.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHParticleSystem.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleSystem.d

# Compiles file ../mod/AvHParticleSystemEntity.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleSystemEntity.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleSystemEntity.o: ../mod/AvHParticleSystemEntity.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHParticleSystemEntity.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleSystemEntity.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHParticleSystemEntity.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleSystemEntity.d

# Compiles file ../mod/AvHParticleSystemManager.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleSystemManager.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleSystemManager.o: ../mod/AvHParticleSystemManager.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHParticleSystemManager.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleSystemManager.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHParticleSystemManager.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleSystemManager.d

# Compiles file ../mod/AvHParticleTemplate.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleTemplate.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleTemplate.o: ../mod/AvHParticleTemplate.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHParticleTemplate.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleTemplate.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHParticleTemplate.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleTemplate.d

# Compiles file ../mod/AvHParticleTemplateServer.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleTemplateServer.d
V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleTemplateServer.o: ../mod/AvHParticleTemplateServer.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../mod/AvHParticleTemplateServer.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleTemplateServer.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../mod/AvHParticleTemplateServer.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../mod/AvHParticleTemplateServer.d

# Compiles file ../util/Balance.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../util/Balance.d
V:/temp/ns.dll/gccDeveloper-release/../util/Balance.o: ../util/Balance.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../util/Balance.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../util/Balance.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../util/Balance.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../util/Balance.d

# Compiles file ../util/Checksum.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../util/Checksum.d
V:/temp/ns.dll/gccDeveloper-release/../util/Checksum.o: ../util/Checksum.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../util/Checksum.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../util/Checksum.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../util/Checksum.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../util/Checksum.d

# Compiles file ../util/GammaTable.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../util/GammaTable.d
V:/temp/ns.dll/gccDeveloper-release/../util/GammaTable.o: ../util/GammaTable.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../util/GammaTable.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../util/GammaTable.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../util/GammaTable.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../util/GammaTable.d

# Compiles file ../util/LinuxSupport.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../util/LinuxSupport.d
V:/temp/ns.dll/gccDeveloper-release/../util/LinuxSupport.o: ../util/LinuxSupport.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../util/LinuxSupport.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../util/LinuxSupport.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../util/LinuxSupport.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../util/LinuxSupport.d

# Compiles file ../util/Mat3.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../util/Mat3.d
V:/temp/ns.dll/gccDeveloper-release/../util/Mat3.o: ../util/Mat3.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../util/Mat3.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../util/Mat3.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../util/Mat3.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../util/Mat3.d

# Compiles file ../util/MathUtil.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../util/MathUtil.d
V:/temp/ns.dll/gccDeveloper-release/../util/MathUtil.o: ../util/MathUtil.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../util/MathUtil.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../util/MathUtil.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../util/MathUtil.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../util/MathUtil.d

# Compiles file ../util/Quat.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../util/Quat.d
V:/temp/ns.dll/gccDeveloper-release/../util/Quat.o: ../util/Quat.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../util/Quat.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../util/Quat.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../util/Quat.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../util/Quat.d

# Compiles file ../util/Stacktrace.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../util/Stacktrace.d
V:/temp/ns.dll/gccDeveloper-release/../util/Stacktrace.o: ../util/Stacktrace.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../util/Stacktrace.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../util/Stacktrace.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../util/Stacktrace.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../util/Stacktrace.d

# Compiles file ../util/STLUtil.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../util/STLUtil.d
V:/temp/ns.dll/gccDeveloper-release/../util/STLUtil.o: ../util/STLUtil.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../util/STLUtil.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../util/STLUtil.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../util/STLUtil.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../util/STLUtil.d

# Compiles file ../util/Tokenizer.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../util/Tokenizer.d
V:/temp/ns.dll/gccDeveloper-release/../util/Tokenizer.o: ../util/Tokenizer.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../util/Tokenizer.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../util/Tokenizer.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../util/Tokenizer.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../util/Tokenizer.d

# Compiles file ../util/Zassert.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../util/Zassert.d
V:/temp/ns.dll/gccDeveloper-release/../util/Zassert.o: ../util/Zassert.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../util/Zassert.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../util/Zassert.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../util/Zassert.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../util/Zassert.d

# Compiles file ../util/ZassertTemplate.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../util/ZassertTemplate.d
V:/temp/ns.dll/gccDeveloper-release/../util/ZassertTemplate.o: ../util/ZassertTemplate.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../util/ZassertTemplate.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../util/ZassertTemplate.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../util/ZassertTemplate.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../util/ZassertTemplate.d

# Compiles file ../textrep/TRDescription.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../textrep/TRDescription.d
V:/temp/ns.dll/gccDeveloper-release/../textrep/TRDescription.o: ../textrep/TRDescription.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../textrep/TRDescription.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../textrep/TRDescription.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../textrep/TRDescription.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../textrep/TRDescription.d

# Compiles file ../textrep/TRFactory.cpp for the Developer-release configuration...
-include V:/temp/ns.dll/gccDeveloper-release/../textrep/TRFactory.d
V:/temp/ns.dll/gccDeveloper-release/../textrep/TRFactory.o: ../textrep/TRFactory.cpp
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -c ../textrep/TRFactory.cpp $(Developer-release_Include_Path) -o V:/temp/ns.dll/gccDeveloper-release/../textrep/TRFactory.o
	$(CPP_COMPILER) $(Developer-release_Preprocessor_Definitions) $(Developer-release_Compiler_Flags) -MM ../textrep/TRFactory.cpp $(Developer-release_Include_Path) > V:/temp/ns.dll/gccDeveloper-release/../textrep/TRFactory.d

# Builds the Playtest-balancedisabled configuration...
.PHONY: Playtest-balancedisabled
Playtest-balancedisabled: create_folders gccPlaytest-balancedisabled/animating.o gccPlaytest-balancedisabled/animation.o gccPlaytest-balancedisabled/bmodels.o gccPlaytest-balancedisabled/buttons.o gccPlaytest-balancedisabled/cbase.o gccPlaytest-balancedisabled/client.o gccPlaytest-balancedisabled/combat.o gccPlaytest-balancedisabled/doors.o gccPlaytest-balancedisabled/effects.o gccPlaytest-balancedisabled/egon.o gccPlaytest-balancedisabled/explode.o gccPlaytest-balancedisabled/func_break.o gccPlaytest-balancedisabled/func_tank.o gccPlaytest-balancedisabled/game.o gccPlaytest-balancedisabled/gamerules.o gccPlaytest-balancedisabled/gauss.o gccPlaytest-balancedisabled/globals.o gccPlaytest-balancedisabled/h_ai.o gccPlaytest-balancedisabled/h_battery.o gccPlaytest-balancedisabled/h_cycler.o gccPlaytest-balancedisabled/h_export.o gccPlaytest-balancedisabled/items.o gccPlaytest-balancedisabled/lights.o gccPlaytest-balancedisabled/maprules.o gccPlaytest-balancedisabled/mpstubb.o gccPlaytest-balancedisabled/multiplay_gamerules.o gccPlaytest-balancedisabled/observer.o gccPlaytest-balancedisabled/pathcorner.o gccPlaytest-balancedisabled/plane.o gccPlaytest-balancedisabled/plats.o gccPlaytest-balancedisabled/player.o gccPlaytest-balancedisabled/../pm_shared/pm_debug.o gccPlaytest-balancedisabled/../pm_shared/pm_math.o gccPlaytest-balancedisabled/../pm_shared/pm_shared.o gccPlaytest-balancedisabled/satchel.o gccPlaytest-balancedisabled/shotgun.o gccPlaytest-balancedisabled/singleplay_gamerules.o gccPlaytest-balancedisabled/skill.o gccPlaytest-balancedisabled/sound.o gccPlaytest-balancedisabled/soundent.o gccPlaytest-balancedisabled/spectator.o gccPlaytest-balancedisabled/squeakgrenade.o gccPlaytest-balancedisabled/subs.o gccPlaytest-balancedisabled/teamplay_gamerules.o gccPlaytest-balancedisabled/triggers.o gccPlaytest-balancedisabled/turret.o gccPlaytest-balancedisabled/util.o gccPlaytest-balancedisabled/../game_shared/voice_banmgr.o gccPlaytest-balancedisabled/../game_shared/voice_gamemgr.o gccPlaytest-balancedisabled/weapons.o gccPlaytest-balancedisabled/world.o gccPlaytest-balancedisabled/xen.o gccPlaytest-balancedisabled/../mod/AnimationUtil.o gccPlaytest-balancedisabled/../mod/AvHAlienEquipment.o gccPlaytest-balancedisabled/../mod/AvHAlienTurret.o gccPlaytest-balancedisabled/../mod/AvHAlienWeapon.o gccPlaytest-balancedisabled/../mod/AvHAssert.o gccPlaytest-balancedisabled/../mod/AvHBaseBuildable.o gccPlaytest-balancedisabled/../mod/AvHBaseInfoLocation.o gccPlaytest-balancedisabled/../mod/AvHBuildable.o gccPlaytest-balancedisabled/../mod/AvHCloakable.o gccPlaytest-balancedisabled/../mod/AvHCombat.o gccPlaytest-balancedisabled/../mod/AvHConsoleCommands.o gccPlaytest-balancedisabled/../mod/AvHConstants.o gccPlaytest-balancedisabled/../mod/AvHCurl.o gccPlaytest-balancedisabled/../mod/AvHEntities.o gccPlaytest-balancedisabled/../mod/AvHEntityHierarchy.o gccPlaytest-balancedisabled/../mod/AvHGamerules.o gccPlaytest-balancedisabled/../mod/AvHHive.o gccPlaytest-balancedisabled/../mod/AvHMapExtents.o gccPlaytest-balancedisabled/../mod/AvHMarineEquipment.o gccPlaytest-balancedisabled/../mod/AvHMarineTurret.o gccPlaytest-balancedisabled/../mod/AvHMarineWeapon.o gccPlaytest-balancedisabled/../mod/AvHMiniMap.o gccPlaytest-balancedisabled/../mod/AvHMovementUtil.o gccPlaytest-balancedisabled/../mod/AvHNetworkMessages.o gccPlaytest-balancedisabled/../mod/AvHNexusServer.o gccPlaytest-balancedisabled/../mod/AvHNexusTunnelToClient.o gccPlaytest-balancedisabled/../mod/AvHOrder.o gccPlaytest-balancedisabled/../mod/AvHPlayer.o gccPlaytest-balancedisabled/../mod/AvHPlayerUpgrade.o gccPlaytest-balancedisabled/../mod/AvHPushableBuildable.o gccPlaytest-balancedisabled/../mod/AvHReinforceable.o gccPlaytest-balancedisabled/../mod/AvHResearchManager.o gccPlaytest-balancedisabled/../mod/AvHScriptManager.o gccPlaytest-balancedisabled/../mod/AvHScriptServer.o gccPlaytest-balancedisabled/../mod/AvHScriptShared.o gccPlaytest-balancedisabled/../mod/AvHSelectionHelper.o gccPlaytest-balancedisabled/../mod/AvHServerPlayerData.o gccPlaytest-balancedisabled/../mod/AvHServerUtil.o gccPlaytest-balancedisabled/../mod/AvHSharedMovementInfo.o gccPlaytest-balancedisabled/../mod/AvHSharedUtil.o gccPlaytest-balancedisabled/../mod/AvHSiegeTurret.o gccPlaytest-balancedisabled/../mod/AvHSoundListManager.o gccPlaytest-balancedisabled/../mod/AvHSpawn.o gccPlaytest-balancedisabled/../mod/AvHSpecials.o gccPlaytest-balancedisabled/../mod/AvHTeam.o gccPlaytest-balancedisabled/../mod/AvHTechNode.o gccPlaytest-balancedisabled/../mod/AvHTechSlotManager.o gccPlaytest-balancedisabled/../mod/AvHTechTree.o gccPlaytest-balancedisabled/../mod/AvHTurret.o gccPlaytest-balancedisabled/../mod/AvHVisibleBlipList.o gccPlaytest-balancedisabled/../mod/AvHVoiceHelper.o gccPlaytest-balancedisabled/../mod/AvHWeldable.o gccPlaytest-balancedisabled/../mod/AvHWorldUpdate.o gccPlaytest-balancedisabled/../mod/CollisionChecker.o gccPlaytest-balancedisabled/../mod/CollisionChecker_ServerOnly.o gccPlaytest-balancedisabled/../mod/CollisionUtil.o gccPlaytest-balancedisabled/../mod/NetworkMeter.o gccPlaytest-balancedisabled/../mod/AvHAcidRocketGun.o gccPlaytest-balancedisabled/../mod/AvHAlienAbilities.o gccPlaytest-balancedisabled/../mod/AvHBasePlayerWeapon.o gccPlaytest-balancedisabled/../mod/AvHBileBombGun.o gccPlaytest-balancedisabled/../mod/AvHBite.o gccPlaytest-balancedisabled/../mod/AvHBite2.o gccPlaytest-balancedisabled/../mod/AvHBlink.o gccPlaytest-balancedisabled/../mod/AvHBuildingGun.o gccPlaytest-balancedisabled/../mod/AvHClaws.o gccPlaytest-balancedisabled/../mod/AvHDevour.o gccPlaytest-balancedisabled/../mod/AvHDivineWind.o gccPlaytest-balancedisabled/../mod/AvHGrenade.o gccPlaytest-balancedisabled/../mod/AvHGrenadeGun.o gccPlaytest-balancedisabled/../mod/AvHHealingSpray.o gccPlaytest-balancedisabled/../mod/AvHHeavyMachineGun.o gccPlaytest-balancedisabled/../mod/AvHItemInfo.o gccPlaytest-balancedisabled/../mod/AvHKnife.o gccPlaytest-balancedisabled/../mod/AvHMachineGun.o gccPlaytest-balancedisabled/../mod/AvHMetabolize.o gccPlaytest-balancedisabled/../mod/AvHMine.o gccPlaytest-balancedisabled/../mod/AvHParasiteGun.o gccPlaytest-balancedisabled/../mod/AvHPistol.o gccPlaytest-balancedisabled/../mod/AvHPrimalScream.o gccPlaytest-balancedisabled/../mod/AvHSonicGun.o gccPlaytest-balancedisabled/../mod/AvHSpikeGun.o gccPlaytest-balancedisabled/../mod/AvHSpitGun.o gccPlaytest-balancedisabled/../mod/AvHSpores.o gccPlaytest-balancedisabled/../mod/AvHStomp.o gccPlaytest-balancedisabled/../mod/AvHSwipe.o gccPlaytest-balancedisabled/../mod/AvHUmbraGun.o gccPlaytest-balancedisabled/../mod/AvHWebSpinner.o gccPlaytest-balancedisabled/../mod/AvHWelder.o gccPlaytest-balancedisabled/ggrenade.o gccPlaytest-balancedisabled/../mod/AvHParticleSystem.o gccPlaytest-balancedisabled/../mod/AvHParticleSystemEntity.o gccPlaytest-balancedisabled/../mod/AvHParticleSystemManager.o gccPlaytest-balancedisabled/../mod/AvHParticleTemplate.o gccPlaytest-balancedisabled/../mod/AvHParticleTemplateServer.o gccPlaytest-balancedisabled/../util/Balance.o gccPlaytest-balancedisabled/../util/Checksum.o gccPlaytest-balancedisabled/../util/GammaTable.o gccPlaytest-balancedisabled/../util/LinuxSupport.o gccPlaytest-balancedisabled/../util/Mat3.o gccPlaytest-balancedisabled/../util/MathUtil.o gccPlaytest-balancedisabled/../util/Quat.o gccPlaytest-balancedisabled/../util/Stacktrace.o gccPlaytest-balancedisabled/../util/STLUtil.o gccPlaytest-balancedisabled/../util/Tokenizer.o gccPlaytest-balancedisabled/../util/Zassert.o gccPlaytest-balancedisabled/../util/ZassertTemplate.o gccPlaytest-balancedisabled/../textrep/TRDescription.o gccPlaytest-balancedisabled/../textrep/TRFactory.o 
	g++ -fPIC -shared -Wl,-soname,libns.dll.so -o ../gccPlaytest-balancedisabled/libns.dll.so gccPlaytest-balancedisabled/animating.o gccPlaytest-balancedisabled/animation.o gccPlaytest-balancedisabled/bmodels.o gccPlaytest-balancedisabled/buttons.o gccPlaytest-balancedisabled/cbase.o gccPlaytest-balancedisabled/client.o gccPlaytest-balancedisabled/combat.o gccPlaytest-balancedisabled/doors.o gccPlaytest-balancedisabled/effects.o gccPlaytest-balancedisabled/egon.o gccPlaytest-balancedisabled/explode.o gccPlaytest-balancedisabled/func_break.o gccPlaytest-balancedisabled/func_tank.o gccPlaytest-balancedisabled/game.o gccPlaytest-balancedisabled/gamerules.o gccPlaytest-balancedisabled/gauss.o gccPlaytest-balancedisabled/globals.o gccPlaytest-balancedisabled/h_ai.o gccPlaytest-balancedisabled/h_battery.o gccPlaytest-balancedisabled/h_cycler.o gccPlaytest-balancedisabled/h_export.o gccPlaytest-balancedisabled/items.o gccPlaytest-balancedisabled/lights.o gccPlaytest-balancedisabled/maprules.o gccPlaytest-balancedisabled/mpstubb.o gccPlaytest-balancedisabled/multiplay_gamerules.o gccPlaytest-balancedisabled/observer.o gccPlaytest-balancedisabled/pathcorner.o gccPlaytest-balancedisabled/plane.o gccPlaytest-balancedisabled/plats.o gccPlaytest-balancedisabled/player.o gccPlaytest-balancedisabled/../pm_shared/pm_debug.o gccPlaytest-balancedisabled/../pm_shared/pm_math.o gccPlaytest-balancedisabled/../pm_shared/pm_shared.o gccPlaytest-balancedisabled/satchel.o gccPlaytest-balancedisabled/shotgun.o gccPlaytest-balancedisabled/singleplay_gamerules.o gccPlaytest-balancedisabled/skill.o gccPlaytest-balancedisabled/sound.o gccPlaytest-balancedisabled/soundent.o gccPlaytest-balancedisabled/spectator.o gccPlaytest-balancedisabled/squeakgrenade.o gccPlaytest-balancedisabled/subs.o gccPlaytest-balancedisabled/teamplay_gamerules.o gccPlaytest-balancedisabled/triggers.o gccPlaytest-balancedisabled/turret.o gccPlaytest-balancedisabled/util.o gccPlaytest-balancedisabled/../game_shared/voice_banmgr.o gccPlaytest-balancedisabled/../game_shared/voice_gamemgr.o gccPlaytest-balancedisabled/weapons.o gccPlaytest-balancedisabled/world.o gccPlaytest-balancedisabled/xen.o gccPlaytest-balancedisabled/../mod/AnimationUtil.o gccPlaytest-balancedisabled/../mod/AvHAlienEquipment.o gccPlaytest-balancedisabled/../mod/AvHAlienTurret.o gccPlaytest-balancedisabled/../mod/AvHAlienWeapon.o gccPlaytest-balancedisabled/../mod/AvHAssert.o gccPlaytest-balancedisabled/../mod/AvHBaseBuildable.o gccPlaytest-balancedisabled/../mod/AvHBaseInfoLocation.o gccPlaytest-balancedisabled/../mod/AvHBuildable.o gccPlaytest-balancedisabled/../mod/AvHCloakable.o gccPlaytest-balancedisabled/../mod/AvHCombat.o gccPlaytest-balancedisabled/../mod/AvHConsoleCommands.o gccPlaytest-balancedisabled/../mod/AvHConstants.o gccPlaytest-balancedisabled/../mod/AvHCurl.o gccPlaytest-balancedisabled/../mod/AvHEntities.o gccPlaytest-balancedisabled/../mod/AvHEntityHierarchy.o gccPlaytest-balancedisabled/../mod/AvHGamerules.o gccPlaytest-balancedisabled/../mod/AvHHive.o gccPlaytest-balancedisabled/../mod/AvHMapExtents.o gccPlaytest-balancedisabled/../mod/AvHMarineEquipment.o gccPlaytest-balancedisabled/../mod/AvHMarineTurret.o gccPlaytest-balancedisabled/../mod/AvHMarineWeapon.o gccPlaytest-balancedisabled/../mod/AvHMiniMap.o gccPlaytest-balancedisabled/../mod/AvHMovementUtil.o gccPlaytest-balancedisabled/../mod/AvHNetworkMessages.o gccPlaytest-balancedisabled/../mod/AvHNexusServer.o gccPlaytest-balancedisabled/../mod/AvHNexusTunnelToClient.o gccPlaytest-balancedisabled/../mod/AvHOrder.o gccPlaytest-balancedisabled/../mod/AvHPlayer.o gccPlaytest-balancedisabled/../mod/AvHPlayerUpgrade.o gccPlaytest-balancedisabled/../mod/AvHPushableBuildable.o gccPlaytest-balancedisabled/../mod/AvHReinforceable.o gccPlaytest-balancedisabled/../mod/AvHResearchManager.o gccPlaytest-balancedisabled/../mod/AvHScriptManager.o gccPlaytest-balancedisabled/../mod/AvHScriptServer.o gccPlaytest-balancedisabled/../mod/AvHScriptShared.o gccPlaytest-balancedisabled/../mod/AvHSelectionHelper.o gccPlaytest-balancedisabled/../mod/AvHServerPlayerData.o gccPlaytest-balancedisabled/../mod/AvHServerUtil.o gccPlaytest-balancedisabled/../mod/AvHSharedMovementInfo.o gccPlaytest-balancedisabled/../mod/AvHSharedUtil.o gccPlaytest-balancedisabled/../mod/AvHSiegeTurret.o gccPlaytest-balancedisabled/../mod/AvHSoundListManager.o gccPlaytest-balancedisabled/../mod/AvHSpawn.o gccPlaytest-balancedisabled/../mod/AvHSpecials.o gccPlaytest-balancedisabled/../mod/AvHTeam.o gccPlaytest-balancedisabled/../mod/AvHTechNode.o gccPlaytest-balancedisabled/../mod/AvHTechSlotManager.o gccPlaytest-balancedisabled/../mod/AvHTechTree.o gccPlaytest-balancedisabled/../mod/AvHTurret.o gccPlaytest-balancedisabled/../mod/AvHVisibleBlipList.o gccPlaytest-balancedisabled/../mod/AvHVoiceHelper.o gccPlaytest-balancedisabled/../mod/AvHWeldable.o gccPlaytest-balancedisabled/../mod/AvHWorldUpdate.o gccPlaytest-balancedisabled/../mod/CollisionChecker.o gccPlaytest-balancedisabled/../mod/CollisionChecker_ServerOnly.o gccPlaytest-balancedisabled/../mod/CollisionUtil.o gccPlaytest-balancedisabled/../mod/NetworkMeter.o gccPlaytest-balancedisabled/../mod/AvHAcidRocketGun.o gccPlaytest-balancedisabled/../mod/AvHAlienAbilities.o gccPlaytest-balancedisabled/../mod/AvHBasePlayerWeapon.o gccPlaytest-balancedisabled/../mod/AvHBileBombGun.o gccPlaytest-balancedisabled/../mod/AvHBite.o gccPlaytest-balancedisabled/../mod/AvHBite2.o gccPlaytest-balancedisabled/../mod/AvHBlink.o gccPlaytest-balancedisabled/../mod/AvHBuildingGun.o gccPlaytest-balancedisabled/../mod/AvHClaws.o gccPlaytest-balancedisabled/../mod/AvHDevour.o gccPlaytest-balancedisabled/../mod/AvHDivineWind.o gccPlaytest-balancedisabled/../mod/AvHGrenade.o gccPlaytest-balancedisabled/../mod/AvHGrenadeGun.o gccPlaytest-balancedisabled/../mod/AvHHealingSpray.o gccPlaytest-balancedisabled/../mod/AvHHeavyMachineGun.o gccPlaytest-balancedisabled/../mod/AvHItemInfo.o gccPlaytest-balancedisabled/../mod/AvHKnife.o gccPlaytest-balancedisabled/../mod/AvHMachineGun.o gccPlaytest-balancedisabled/../mod/AvHMetabolize.o gccPlaytest-balancedisabled/../mod/AvHMine.o gccPlaytest-balancedisabled/../mod/AvHParasiteGun.o gccPlaytest-balancedisabled/../mod/AvHPistol.o gccPlaytest-balancedisabled/../mod/AvHPrimalScream.o gccPlaytest-balancedisabled/../mod/AvHSonicGun.o gccPlaytest-balancedisabled/../mod/AvHSpikeGun.o gccPlaytest-balancedisabled/../mod/AvHSpitGun.o gccPlaytest-balancedisabled/../mod/AvHSpores.o gccPlaytest-balancedisabled/../mod/AvHStomp.o gccPlaytest-balancedisabled/../mod/AvHSwipe.o gccPlaytest-balancedisabled/../mod/AvHUmbraGun.o gccPlaytest-balancedisabled/../mod/AvHWebSpinner.o gccPlaytest-balancedisabled/../mod/AvHWelder.o gccPlaytest-balancedisabled/ggrenade.o gccPlaytest-balancedisabled/../mod/AvHParticleSystem.o gccPlaytest-balancedisabled/../mod/AvHParticleSystemEntity.o gccPlaytest-balancedisabled/../mod/AvHParticleSystemManager.o gccPlaytest-balancedisabled/../mod/AvHParticleTemplate.o gccPlaytest-balancedisabled/../mod/AvHParticleTemplateServer.o gccPlaytest-balancedisabled/../util/Balance.o gccPlaytest-balancedisabled/../util/Checksum.o gccPlaytest-balancedisabled/../util/GammaTable.o gccPlaytest-balancedisabled/../util/LinuxSupport.o gccPlaytest-balancedisabled/../util/Mat3.o gccPlaytest-balancedisabled/../util/MathUtil.o gccPlaytest-balancedisabled/../util/Quat.o gccPlaytest-balancedisabled/../util/Stacktrace.o gccPlaytest-balancedisabled/../util/STLUtil.o gccPlaytest-balancedisabled/../util/Tokenizer.o gccPlaytest-balancedisabled/../util/Zassert.o gccPlaytest-balancedisabled/../util/ZassertTemplate.o gccPlaytest-balancedisabled/../textrep/TRDescription.o gccPlaytest-balancedisabled/../textrep/TRFactory.o  $(Playtest-balancedisabled_Implicitly_Linked_Objects)

# Compiles file animating.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/animating.d
gccPlaytest-balancedisabled/animating.o: animating.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c animating.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/animating.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM animating.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/animating.d

# Compiles file animation.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/animation.d
gccPlaytest-balancedisabled/animation.o: animation.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c animation.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/animation.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM animation.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/animation.d

# Compiles file bmodels.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/bmodels.d
gccPlaytest-balancedisabled/bmodels.o: bmodels.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c bmodels.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/bmodels.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM bmodels.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/bmodels.d

# Compiles file buttons.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/buttons.d
gccPlaytest-balancedisabled/buttons.o: buttons.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c buttons.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/buttons.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM buttons.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/buttons.d

# Compiles file cbase.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/cbase.d
gccPlaytest-balancedisabled/cbase.o: cbase.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c cbase.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/cbase.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM cbase.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/cbase.d

# Compiles file client.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/client.d
gccPlaytest-balancedisabled/client.o: client.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c client.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/client.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM client.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/client.d

# Compiles file combat.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/combat.d
gccPlaytest-balancedisabled/combat.o: combat.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c combat.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/combat.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM combat.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/combat.d

# Compiles file doors.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/doors.d
gccPlaytest-balancedisabled/doors.o: doors.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c doors.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/doors.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM doors.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/doors.d

# Compiles file effects.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/effects.d
gccPlaytest-balancedisabled/effects.o: effects.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c effects.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/effects.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM effects.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/effects.d

# Compiles file egon.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/egon.d
gccPlaytest-balancedisabled/egon.o: egon.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c egon.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/egon.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM egon.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/egon.d

# Compiles file explode.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/explode.d
gccPlaytest-balancedisabled/explode.o: explode.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c explode.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/explode.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM explode.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/explode.d

# Compiles file func_break.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/func_break.d
gccPlaytest-balancedisabled/func_break.o: func_break.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c func_break.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/func_break.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM func_break.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/func_break.d

# Compiles file func_tank.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/func_tank.d
gccPlaytest-balancedisabled/func_tank.o: func_tank.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c func_tank.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/func_tank.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM func_tank.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/func_tank.d

# Compiles file game.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/game.d
gccPlaytest-balancedisabled/game.o: game.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c game.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/game.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM game.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/game.d

# Compiles file gamerules.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/gamerules.d
gccPlaytest-balancedisabled/gamerules.o: gamerules.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c gamerules.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/gamerules.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM gamerules.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/gamerules.d

# Compiles file gauss.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/gauss.d
gccPlaytest-balancedisabled/gauss.o: gauss.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c gauss.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/gauss.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM gauss.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/gauss.d

# Compiles file globals.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/globals.d
gccPlaytest-balancedisabled/globals.o: globals.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c globals.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/globals.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM globals.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/globals.d

# Compiles file h_ai.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/h_ai.d
gccPlaytest-balancedisabled/h_ai.o: h_ai.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c h_ai.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/h_ai.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM h_ai.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/h_ai.d

# Compiles file h_battery.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/h_battery.d
gccPlaytest-balancedisabled/h_battery.o: h_battery.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c h_battery.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/h_battery.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM h_battery.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/h_battery.d

# Compiles file h_cycler.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/h_cycler.d
gccPlaytest-balancedisabled/h_cycler.o: h_cycler.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c h_cycler.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/h_cycler.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM h_cycler.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/h_cycler.d

# Compiles file h_export.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/h_export.d
gccPlaytest-balancedisabled/h_export.o: h_export.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c h_export.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/h_export.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM h_export.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/h_export.d

# Compiles file items.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/items.d
gccPlaytest-balancedisabled/items.o: items.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c items.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/items.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM items.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/items.d

# Compiles file lights.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/lights.d
gccPlaytest-balancedisabled/lights.o: lights.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c lights.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/lights.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM lights.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/lights.d

# Compiles file maprules.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/maprules.d
gccPlaytest-balancedisabled/maprules.o: maprules.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c maprules.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/maprules.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM maprules.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/maprules.d

# Compiles file mpstubb.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/mpstubb.d
gccPlaytest-balancedisabled/mpstubb.o: mpstubb.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c mpstubb.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/mpstubb.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM mpstubb.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/mpstubb.d

# Compiles file multiplay_gamerules.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/multiplay_gamerules.d
gccPlaytest-balancedisabled/multiplay_gamerules.o: multiplay_gamerules.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c multiplay_gamerules.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/multiplay_gamerules.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM multiplay_gamerules.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/multiplay_gamerules.d

# Compiles file observer.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/observer.d
gccPlaytest-balancedisabled/observer.o: observer.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c observer.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/observer.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM observer.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/observer.d

# Compiles file pathcorner.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/pathcorner.d
gccPlaytest-balancedisabled/pathcorner.o: pathcorner.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c pathcorner.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/pathcorner.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM pathcorner.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/pathcorner.d

# Compiles file plane.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/plane.d
gccPlaytest-balancedisabled/plane.o: plane.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c plane.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/plane.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM plane.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/plane.d

# Compiles file plats.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/plats.d
gccPlaytest-balancedisabled/plats.o: plats.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c plats.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/plats.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM plats.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/plats.d

# Compiles file player.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/player.d
gccPlaytest-balancedisabled/player.o: player.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c player.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/player.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM player.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/player.d

# Compiles file ../pm_shared/pm_debug.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../pm_shared/pm_debug.d
gccPlaytest-balancedisabled/../pm_shared/pm_debug.o: ../pm_shared/pm_debug.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../pm_shared/pm_debug.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../pm_shared/pm_debug.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../pm_shared/pm_debug.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../pm_shared/pm_debug.d

# Compiles file ../pm_shared/pm_math.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../pm_shared/pm_math.d
gccPlaytest-balancedisabled/../pm_shared/pm_math.o: ../pm_shared/pm_math.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../pm_shared/pm_math.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../pm_shared/pm_math.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../pm_shared/pm_math.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../pm_shared/pm_math.d

# Compiles file ../pm_shared/pm_shared.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../pm_shared/pm_shared.d
gccPlaytest-balancedisabled/../pm_shared/pm_shared.o: ../pm_shared/pm_shared.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../pm_shared/pm_shared.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../pm_shared/pm_shared.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../pm_shared/pm_shared.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../pm_shared/pm_shared.d

# Compiles file satchel.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/satchel.d
gccPlaytest-balancedisabled/satchel.o: satchel.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c satchel.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/satchel.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM satchel.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/satchel.d

# Compiles file shotgun.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/shotgun.d
gccPlaytest-balancedisabled/shotgun.o: shotgun.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c shotgun.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/shotgun.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM shotgun.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/shotgun.d

# Compiles file singleplay_gamerules.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/singleplay_gamerules.d
gccPlaytest-balancedisabled/singleplay_gamerules.o: singleplay_gamerules.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c singleplay_gamerules.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/singleplay_gamerules.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM singleplay_gamerules.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/singleplay_gamerules.d

# Compiles file skill.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/skill.d
gccPlaytest-balancedisabled/skill.o: skill.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c skill.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/skill.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM skill.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/skill.d

# Compiles file sound.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/sound.d
gccPlaytest-balancedisabled/sound.o: sound.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c sound.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/sound.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM sound.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/sound.d

# Compiles file soundent.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/soundent.d
gccPlaytest-balancedisabled/soundent.o: soundent.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c soundent.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/soundent.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM soundent.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/soundent.d

# Compiles file spectator.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/spectator.d
gccPlaytest-balancedisabled/spectator.o: spectator.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c spectator.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/spectator.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM spectator.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/spectator.d

# Compiles file squeakgrenade.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/squeakgrenade.d
gccPlaytest-balancedisabled/squeakgrenade.o: squeakgrenade.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c squeakgrenade.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/squeakgrenade.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM squeakgrenade.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/squeakgrenade.d

# Compiles file subs.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/subs.d
gccPlaytest-balancedisabled/subs.o: subs.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c subs.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/subs.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM subs.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/subs.d

# Compiles file teamplay_gamerules.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/teamplay_gamerules.d
gccPlaytest-balancedisabled/teamplay_gamerules.o: teamplay_gamerules.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c teamplay_gamerules.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/teamplay_gamerules.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM teamplay_gamerules.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/teamplay_gamerules.d

# Compiles file triggers.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/triggers.d
gccPlaytest-balancedisabled/triggers.o: triggers.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c triggers.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/triggers.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM triggers.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/triggers.d

# Compiles file turret.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/turret.d
gccPlaytest-balancedisabled/turret.o: turret.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c turret.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/turret.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM turret.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/turret.d

# Compiles file util.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/util.d
gccPlaytest-balancedisabled/util.o: util.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c util.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/util.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM util.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/util.d

# Compiles file ../game_shared/voice_banmgr.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../game_shared/voice_banmgr.d
gccPlaytest-balancedisabled/../game_shared/voice_banmgr.o: ../game_shared/voice_banmgr.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../game_shared/voice_banmgr.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../game_shared/voice_banmgr.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../game_shared/voice_banmgr.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../game_shared/voice_banmgr.d

# Compiles file ../game_shared/voice_gamemgr.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../game_shared/voice_gamemgr.d
gccPlaytest-balancedisabled/../game_shared/voice_gamemgr.o: ../game_shared/voice_gamemgr.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../game_shared/voice_gamemgr.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../game_shared/voice_gamemgr.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../game_shared/voice_gamemgr.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../game_shared/voice_gamemgr.d

# Compiles file weapons.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/weapons.d
gccPlaytest-balancedisabled/weapons.o: weapons.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c weapons.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/weapons.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM weapons.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/weapons.d

# Compiles file world.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/world.d
gccPlaytest-balancedisabled/world.o: world.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c world.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/world.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM world.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/world.d

# Compiles file xen.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/xen.d
gccPlaytest-balancedisabled/xen.o: xen.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c xen.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/xen.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM xen.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/xen.d

# Compiles file ../mod/AnimationUtil.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AnimationUtil.d
gccPlaytest-balancedisabled/../mod/AnimationUtil.o: ../mod/AnimationUtil.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AnimationUtil.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AnimationUtil.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AnimationUtil.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AnimationUtil.d

# Compiles file ../mod/AvHAlienEquipment.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHAlienEquipment.d
gccPlaytest-balancedisabled/../mod/AvHAlienEquipment.o: ../mod/AvHAlienEquipment.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHAlienEquipment.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHAlienEquipment.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHAlienEquipment.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHAlienEquipment.d

# Compiles file ../mod/AvHAlienTurret.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHAlienTurret.d
gccPlaytest-balancedisabled/../mod/AvHAlienTurret.o: ../mod/AvHAlienTurret.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHAlienTurret.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHAlienTurret.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHAlienTurret.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHAlienTurret.d

# Compiles file ../mod/AvHAlienWeapon.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHAlienWeapon.d
gccPlaytest-balancedisabled/../mod/AvHAlienWeapon.o: ../mod/AvHAlienWeapon.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHAlienWeapon.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHAlienWeapon.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHAlienWeapon.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHAlienWeapon.d

# Compiles file ../mod/AvHAssert.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHAssert.d
gccPlaytest-balancedisabled/../mod/AvHAssert.o: ../mod/AvHAssert.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHAssert.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHAssert.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHAssert.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHAssert.d

# Compiles file ../mod/AvHBaseBuildable.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHBaseBuildable.d
gccPlaytest-balancedisabled/../mod/AvHBaseBuildable.o: ../mod/AvHBaseBuildable.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHBaseBuildable.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHBaseBuildable.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHBaseBuildable.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHBaseBuildable.d

# Compiles file ../mod/AvHBaseInfoLocation.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHBaseInfoLocation.d
gccPlaytest-balancedisabled/../mod/AvHBaseInfoLocation.o: ../mod/AvHBaseInfoLocation.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHBaseInfoLocation.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHBaseInfoLocation.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHBaseInfoLocation.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHBaseInfoLocation.d

# Compiles file ../mod/AvHBuildable.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHBuildable.d
gccPlaytest-balancedisabled/../mod/AvHBuildable.o: ../mod/AvHBuildable.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHBuildable.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHBuildable.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHBuildable.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHBuildable.d

# Compiles file ../mod/AvHCloakable.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHCloakable.d
gccPlaytest-balancedisabled/../mod/AvHCloakable.o: ../mod/AvHCloakable.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHCloakable.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHCloakable.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHCloakable.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHCloakable.d

# Compiles file ../mod/AvHCombat.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHCombat.d
gccPlaytest-balancedisabled/../mod/AvHCombat.o: ../mod/AvHCombat.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHCombat.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHCombat.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHCombat.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHCombat.d

# Compiles file ../mod/AvHConsoleCommands.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHConsoleCommands.d
gccPlaytest-balancedisabled/../mod/AvHConsoleCommands.o: ../mod/AvHConsoleCommands.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHConsoleCommands.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHConsoleCommands.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHConsoleCommands.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHConsoleCommands.d

# Compiles file ../mod/AvHConstants.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHConstants.d
gccPlaytest-balancedisabled/../mod/AvHConstants.o: ../mod/AvHConstants.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHConstants.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHConstants.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHConstants.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHConstants.d

# Compiles file ../mod/AvHCurl.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHCurl.d
gccPlaytest-balancedisabled/../mod/AvHCurl.o: ../mod/AvHCurl.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHCurl.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHCurl.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHCurl.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHCurl.d

# Compiles file ../mod/AvHEntities.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHEntities.d
gccPlaytest-balancedisabled/../mod/AvHEntities.o: ../mod/AvHEntities.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHEntities.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHEntities.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHEntities.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHEntities.d

# Compiles file ../mod/AvHEntityHierarchy.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHEntityHierarchy.d
gccPlaytest-balancedisabled/../mod/AvHEntityHierarchy.o: ../mod/AvHEntityHierarchy.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHEntityHierarchy.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHEntityHierarchy.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHEntityHierarchy.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHEntityHierarchy.d

# Compiles file ../mod/AvHGamerules.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHGamerules.d
gccPlaytest-balancedisabled/../mod/AvHGamerules.o: ../mod/AvHGamerules.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHGamerules.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHGamerules.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHGamerules.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHGamerules.d

# Compiles file ../mod/AvHHive.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHHive.d
gccPlaytest-balancedisabled/../mod/AvHHive.o: ../mod/AvHHive.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHHive.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHHive.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHHive.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHHive.d

# Compiles file ../mod/AvHMapExtents.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHMapExtents.d
gccPlaytest-balancedisabled/../mod/AvHMapExtents.o: ../mod/AvHMapExtents.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHMapExtents.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHMapExtents.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHMapExtents.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHMapExtents.d

# Compiles file ../mod/AvHMarineEquipment.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHMarineEquipment.d
gccPlaytest-balancedisabled/../mod/AvHMarineEquipment.o: ../mod/AvHMarineEquipment.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHMarineEquipment.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHMarineEquipment.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHMarineEquipment.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHMarineEquipment.d

# Compiles file ../mod/AvHMarineTurret.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHMarineTurret.d
gccPlaytest-balancedisabled/../mod/AvHMarineTurret.o: ../mod/AvHMarineTurret.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHMarineTurret.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHMarineTurret.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHMarineTurret.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHMarineTurret.d

# Compiles file ../mod/AvHMarineWeapon.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHMarineWeapon.d
gccPlaytest-balancedisabled/../mod/AvHMarineWeapon.o: ../mod/AvHMarineWeapon.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHMarineWeapon.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHMarineWeapon.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHMarineWeapon.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHMarineWeapon.d

# Compiles file ../mod/AvHMiniMap.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHMiniMap.d
gccPlaytest-balancedisabled/../mod/AvHMiniMap.o: ../mod/AvHMiniMap.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHMiniMap.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHMiniMap.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHMiniMap.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHMiniMap.d

# Compiles file ../mod/AvHMovementUtil.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHMovementUtil.d
gccPlaytest-balancedisabled/../mod/AvHMovementUtil.o: ../mod/AvHMovementUtil.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHMovementUtil.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHMovementUtil.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHMovementUtil.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHMovementUtil.d

# Compiles file ../mod/AvHNetworkMessages.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHNetworkMessages.d
gccPlaytest-balancedisabled/../mod/AvHNetworkMessages.o: ../mod/AvHNetworkMessages.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHNetworkMessages.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHNetworkMessages.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHNetworkMessages.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHNetworkMessages.d

# Compiles file ../mod/AvHNexusServer.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHNexusServer.d
gccPlaytest-balancedisabled/../mod/AvHNexusServer.o: ../mod/AvHNexusServer.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHNexusServer.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHNexusServer.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHNexusServer.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHNexusServer.d

# Compiles file ../mod/AvHNexusTunnelToClient.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHNexusTunnelToClient.d
gccPlaytest-balancedisabled/../mod/AvHNexusTunnelToClient.o: ../mod/AvHNexusTunnelToClient.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHNexusTunnelToClient.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHNexusTunnelToClient.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHNexusTunnelToClient.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHNexusTunnelToClient.d

# Compiles file ../mod/AvHOrder.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHOrder.d
gccPlaytest-balancedisabled/../mod/AvHOrder.o: ../mod/AvHOrder.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHOrder.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHOrder.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHOrder.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHOrder.d

# Compiles file ../mod/AvHPlayer.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHPlayer.d
gccPlaytest-balancedisabled/../mod/AvHPlayer.o: ../mod/AvHPlayer.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHPlayer.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHPlayer.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHPlayer.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHPlayer.d

# Compiles file ../mod/AvHPlayerUpgrade.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHPlayerUpgrade.d
gccPlaytest-balancedisabled/../mod/AvHPlayerUpgrade.o: ../mod/AvHPlayerUpgrade.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHPlayerUpgrade.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHPlayerUpgrade.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHPlayerUpgrade.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHPlayerUpgrade.d

# Compiles file ../mod/AvHPushableBuildable.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHPushableBuildable.d
gccPlaytest-balancedisabled/../mod/AvHPushableBuildable.o: ../mod/AvHPushableBuildable.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHPushableBuildable.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHPushableBuildable.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHPushableBuildable.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHPushableBuildable.d

# Compiles file ../mod/AvHReinforceable.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHReinforceable.d
gccPlaytest-balancedisabled/../mod/AvHReinforceable.o: ../mod/AvHReinforceable.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHReinforceable.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHReinforceable.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHReinforceable.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHReinforceable.d

# Compiles file ../mod/AvHResearchManager.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHResearchManager.d
gccPlaytest-balancedisabled/../mod/AvHResearchManager.o: ../mod/AvHResearchManager.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHResearchManager.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHResearchManager.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHResearchManager.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHResearchManager.d

# Compiles file ../mod/AvHScriptManager.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHScriptManager.d
gccPlaytest-balancedisabled/../mod/AvHScriptManager.o: ../mod/AvHScriptManager.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHScriptManager.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHScriptManager.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHScriptManager.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHScriptManager.d

# Compiles file ../mod/AvHScriptServer.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHScriptServer.d
gccPlaytest-balancedisabled/../mod/AvHScriptServer.o: ../mod/AvHScriptServer.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHScriptServer.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHScriptServer.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHScriptServer.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHScriptServer.d

# Compiles file ../mod/AvHScriptShared.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHScriptShared.d
gccPlaytest-balancedisabled/../mod/AvHScriptShared.o: ../mod/AvHScriptShared.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHScriptShared.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHScriptShared.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHScriptShared.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHScriptShared.d

# Compiles file ../mod/AvHSelectionHelper.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHSelectionHelper.d
gccPlaytest-balancedisabled/../mod/AvHSelectionHelper.o: ../mod/AvHSelectionHelper.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHSelectionHelper.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHSelectionHelper.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHSelectionHelper.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHSelectionHelper.d

# Compiles file ../mod/AvHServerPlayerData.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHServerPlayerData.d
gccPlaytest-balancedisabled/../mod/AvHServerPlayerData.o: ../mod/AvHServerPlayerData.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHServerPlayerData.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHServerPlayerData.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHServerPlayerData.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHServerPlayerData.d

# Compiles file ../mod/AvHServerUtil.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHServerUtil.d
gccPlaytest-balancedisabled/../mod/AvHServerUtil.o: ../mod/AvHServerUtil.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHServerUtil.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHServerUtil.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHServerUtil.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHServerUtil.d

# Compiles file ../mod/AvHSharedMovementInfo.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHSharedMovementInfo.d
gccPlaytest-balancedisabled/../mod/AvHSharedMovementInfo.o: ../mod/AvHSharedMovementInfo.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHSharedMovementInfo.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHSharedMovementInfo.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHSharedMovementInfo.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHSharedMovementInfo.d

# Compiles file ../mod/AvHSharedUtil.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHSharedUtil.d
gccPlaytest-balancedisabled/../mod/AvHSharedUtil.o: ../mod/AvHSharedUtil.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHSharedUtil.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHSharedUtil.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHSharedUtil.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHSharedUtil.d

# Compiles file ../mod/AvHSiegeTurret.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHSiegeTurret.d
gccPlaytest-balancedisabled/../mod/AvHSiegeTurret.o: ../mod/AvHSiegeTurret.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHSiegeTurret.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHSiegeTurret.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHSiegeTurret.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHSiegeTurret.d

# Compiles file ../mod/AvHSoundListManager.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHSoundListManager.d
gccPlaytest-balancedisabled/../mod/AvHSoundListManager.o: ../mod/AvHSoundListManager.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHSoundListManager.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHSoundListManager.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHSoundListManager.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHSoundListManager.d

# Compiles file ../mod/AvHSpawn.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHSpawn.d
gccPlaytest-balancedisabled/../mod/AvHSpawn.o: ../mod/AvHSpawn.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHSpawn.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHSpawn.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHSpawn.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHSpawn.d

# Compiles file ../mod/AvHSpecials.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHSpecials.d
gccPlaytest-balancedisabled/../mod/AvHSpecials.o: ../mod/AvHSpecials.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHSpecials.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHSpecials.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHSpecials.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHSpecials.d

# Compiles file ../mod/AvHTeam.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHTeam.d
gccPlaytest-balancedisabled/../mod/AvHTeam.o: ../mod/AvHTeam.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHTeam.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHTeam.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHTeam.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHTeam.d

# Compiles file ../mod/AvHTechNode.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHTechNode.d
gccPlaytest-balancedisabled/../mod/AvHTechNode.o: ../mod/AvHTechNode.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHTechNode.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHTechNode.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHTechNode.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHTechNode.d

# Compiles file ../mod/AvHTechSlotManager.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHTechSlotManager.d
gccPlaytest-balancedisabled/../mod/AvHTechSlotManager.o: ../mod/AvHTechSlotManager.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHTechSlotManager.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHTechSlotManager.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHTechSlotManager.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHTechSlotManager.d

# Compiles file ../mod/AvHTechTree.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHTechTree.d
gccPlaytest-balancedisabled/../mod/AvHTechTree.o: ../mod/AvHTechTree.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHTechTree.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHTechTree.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHTechTree.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHTechTree.d

# Compiles file ../mod/AvHTurret.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHTurret.d
gccPlaytest-balancedisabled/../mod/AvHTurret.o: ../mod/AvHTurret.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHTurret.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHTurret.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHTurret.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHTurret.d

# Compiles file ../mod/AvHVisibleBlipList.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHVisibleBlipList.d
gccPlaytest-balancedisabled/../mod/AvHVisibleBlipList.o: ../mod/AvHVisibleBlipList.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHVisibleBlipList.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHVisibleBlipList.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHVisibleBlipList.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHVisibleBlipList.d

# Compiles file ../mod/AvHVoiceHelper.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHVoiceHelper.d
gccPlaytest-balancedisabled/../mod/AvHVoiceHelper.o: ../mod/AvHVoiceHelper.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHVoiceHelper.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHVoiceHelper.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHVoiceHelper.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHVoiceHelper.d

# Compiles file ../mod/AvHWeldable.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHWeldable.d
gccPlaytest-balancedisabled/../mod/AvHWeldable.o: ../mod/AvHWeldable.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHWeldable.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHWeldable.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHWeldable.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHWeldable.d

# Compiles file ../mod/AvHWorldUpdate.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHWorldUpdate.d
gccPlaytest-balancedisabled/../mod/AvHWorldUpdate.o: ../mod/AvHWorldUpdate.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHWorldUpdate.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHWorldUpdate.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHWorldUpdate.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHWorldUpdate.d

# Compiles file ../mod/CollisionChecker.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/CollisionChecker.d
gccPlaytest-balancedisabled/../mod/CollisionChecker.o: ../mod/CollisionChecker.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/CollisionChecker.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/CollisionChecker.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/CollisionChecker.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/CollisionChecker.d

# Compiles file ../mod/CollisionChecker_ServerOnly.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/CollisionChecker_ServerOnly.d
gccPlaytest-balancedisabled/../mod/CollisionChecker_ServerOnly.o: ../mod/CollisionChecker_ServerOnly.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/CollisionChecker_ServerOnly.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/CollisionChecker_ServerOnly.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/CollisionChecker_ServerOnly.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/CollisionChecker_ServerOnly.d

# Compiles file ../mod/CollisionUtil.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/CollisionUtil.d
gccPlaytest-balancedisabled/../mod/CollisionUtil.o: ../mod/CollisionUtil.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/CollisionUtil.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/CollisionUtil.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/CollisionUtil.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/CollisionUtil.d

# Compiles file ../mod/NetworkMeter.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/NetworkMeter.d
gccPlaytest-balancedisabled/../mod/NetworkMeter.o: ../mod/NetworkMeter.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/NetworkMeter.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/NetworkMeter.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/NetworkMeter.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/NetworkMeter.d

# Compiles file ../mod/AvHAcidRocketGun.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHAcidRocketGun.d
gccPlaytest-balancedisabled/../mod/AvHAcidRocketGun.o: ../mod/AvHAcidRocketGun.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHAcidRocketGun.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHAcidRocketGun.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHAcidRocketGun.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHAcidRocketGun.d

# Compiles file ../mod/AvHAlienAbilities.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHAlienAbilities.d
gccPlaytest-balancedisabled/../mod/AvHAlienAbilities.o: ../mod/AvHAlienAbilities.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHAlienAbilities.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHAlienAbilities.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHAlienAbilities.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHAlienAbilities.d

# Compiles file ../mod/AvHBasePlayerWeapon.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHBasePlayerWeapon.d
gccPlaytest-balancedisabled/../mod/AvHBasePlayerWeapon.o: ../mod/AvHBasePlayerWeapon.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHBasePlayerWeapon.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHBasePlayerWeapon.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHBasePlayerWeapon.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHBasePlayerWeapon.d

# Compiles file ../mod/AvHBileBombGun.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHBileBombGun.d
gccPlaytest-balancedisabled/../mod/AvHBileBombGun.o: ../mod/AvHBileBombGun.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHBileBombGun.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHBileBombGun.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHBileBombGun.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHBileBombGun.d

# Compiles file ../mod/AvHBite.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHBite.d
gccPlaytest-balancedisabled/../mod/AvHBite.o: ../mod/AvHBite.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHBite.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHBite.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHBite.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHBite.d

# Compiles file ../mod/AvHBite2.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHBite2.d
gccPlaytest-balancedisabled/../mod/AvHBite2.o: ../mod/AvHBite2.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHBite2.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHBite2.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHBite2.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHBite2.d

# Compiles file ../mod/AvHBlink.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHBlink.d
gccPlaytest-balancedisabled/../mod/AvHBlink.o: ../mod/AvHBlink.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHBlink.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHBlink.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHBlink.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHBlink.d

# Compiles file ../mod/AvHBuildingGun.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHBuildingGun.d
gccPlaytest-balancedisabled/../mod/AvHBuildingGun.o: ../mod/AvHBuildingGun.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHBuildingGun.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHBuildingGun.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHBuildingGun.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHBuildingGun.d

# Compiles file ../mod/AvHClaws.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHClaws.d
gccPlaytest-balancedisabled/../mod/AvHClaws.o: ../mod/AvHClaws.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHClaws.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHClaws.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHClaws.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHClaws.d

# Compiles file ../mod/AvHDevour.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHDevour.d
gccPlaytest-balancedisabled/../mod/AvHDevour.o: ../mod/AvHDevour.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHDevour.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHDevour.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHDevour.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHDevour.d

# Compiles file ../mod/AvHDivineWind.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHDivineWind.d
gccPlaytest-balancedisabled/../mod/AvHDivineWind.o: ../mod/AvHDivineWind.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHDivineWind.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHDivineWind.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHDivineWind.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHDivineWind.d

# Compiles file ../mod/AvHGrenade.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHGrenade.d
gccPlaytest-balancedisabled/../mod/AvHGrenade.o: ../mod/AvHGrenade.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHGrenade.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHGrenade.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHGrenade.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHGrenade.d

# Compiles file ../mod/AvHGrenadeGun.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHGrenadeGun.d
gccPlaytest-balancedisabled/../mod/AvHGrenadeGun.o: ../mod/AvHGrenadeGun.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHGrenadeGun.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHGrenadeGun.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHGrenadeGun.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHGrenadeGun.d

# Compiles file ../mod/AvHHealingSpray.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHHealingSpray.d
gccPlaytest-balancedisabled/../mod/AvHHealingSpray.o: ../mod/AvHHealingSpray.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHHealingSpray.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHHealingSpray.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHHealingSpray.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHHealingSpray.d

# Compiles file ../mod/AvHHeavyMachineGun.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHHeavyMachineGun.d
gccPlaytest-balancedisabled/../mod/AvHHeavyMachineGun.o: ../mod/AvHHeavyMachineGun.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHHeavyMachineGun.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHHeavyMachineGun.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHHeavyMachineGun.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHHeavyMachineGun.d

# Compiles file ../mod/AvHItemInfo.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHItemInfo.d
gccPlaytest-balancedisabled/../mod/AvHItemInfo.o: ../mod/AvHItemInfo.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHItemInfo.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHItemInfo.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHItemInfo.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHItemInfo.d

# Compiles file ../mod/AvHKnife.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHKnife.d
gccPlaytest-balancedisabled/../mod/AvHKnife.o: ../mod/AvHKnife.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHKnife.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHKnife.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHKnife.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHKnife.d

# Compiles file ../mod/AvHMachineGun.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHMachineGun.d
gccPlaytest-balancedisabled/../mod/AvHMachineGun.o: ../mod/AvHMachineGun.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHMachineGun.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHMachineGun.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHMachineGun.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHMachineGun.d

# Compiles file ../mod/AvHMetabolize.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHMetabolize.d
gccPlaytest-balancedisabled/../mod/AvHMetabolize.o: ../mod/AvHMetabolize.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHMetabolize.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHMetabolize.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHMetabolize.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHMetabolize.d

# Compiles file ../mod/AvHMine.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHMine.d
gccPlaytest-balancedisabled/../mod/AvHMine.o: ../mod/AvHMine.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHMine.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHMine.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHMine.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHMine.d

# Compiles file ../mod/AvHParasiteGun.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHParasiteGun.d
gccPlaytest-balancedisabled/../mod/AvHParasiteGun.o: ../mod/AvHParasiteGun.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHParasiteGun.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHParasiteGun.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHParasiteGun.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHParasiteGun.d

# Compiles file ../mod/AvHPistol.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHPistol.d
gccPlaytest-balancedisabled/../mod/AvHPistol.o: ../mod/AvHPistol.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHPistol.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHPistol.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHPistol.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHPistol.d

# Compiles file ../mod/AvHPrimalScream.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHPrimalScream.d
gccPlaytest-balancedisabled/../mod/AvHPrimalScream.o: ../mod/AvHPrimalScream.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHPrimalScream.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHPrimalScream.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHPrimalScream.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHPrimalScream.d

# Compiles file ../mod/AvHSonicGun.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHSonicGun.d
gccPlaytest-balancedisabled/../mod/AvHSonicGun.o: ../mod/AvHSonicGun.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHSonicGun.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHSonicGun.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHSonicGun.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHSonicGun.d

# Compiles file ../mod/AvHSpikeGun.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHSpikeGun.d
gccPlaytest-balancedisabled/../mod/AvHSpikeGun.o: ../mod/AvHSpikeGun.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHSpikeGun.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHSpikeGun.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHSpikeGun.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHSpikeGun.d

# Compiles file ../mod/AvHSpitGun.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHSpitGun.d
gccPlaytest-balancedisabled/../mod/AvHSpitGun.o: ../mod/AvHSpitGun.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHSpitGun.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHSpitGun.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHSpitGun.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHSpitGun.d

# Compiles file ../mod/AvHSpores.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHSpores.d
gccPlaytest-balancedisabled/../mod/AvHSpores.o: ../mod/AvHSpores.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHSpores.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHSpores.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHSpores.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHSpores.d

# Compiles file ../mod/AvHStomp.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHStomp.d
gccPlaytest-balancedisabled/../mod/AvHStomp.o: ../mod/AvHStomp.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHStomp.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHStomp.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHStomp.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHStomp.d

# Compiles file ../mod/AvHSwipe.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHSwipe.d
gccPlaytest-balancedisabled/../mod/AvHSwipe.o: ../mod/AvHSwipe.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHSwipe.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHSwipe.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHSwipe.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHSwipe.d

# Compiles file ../mod/AvHUmbraGun.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHUmbraGun.d
gccPlaytest-balancedisabled/../mod/AvHUmbraGun.o: ../mod/AvHUmbraGun.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHUmbraGun.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHUmbraGun.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHUmbraGun.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHUmbraGun.d

# Compiles file ../mod/AvHWebSpinner.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHWebSpinner.d
gccPlaytest-balancedisabled/../mod/AvHWebSpinner.o: ../mod/AvHWebSpinner.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHWebSpinner.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHWebSpinner.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHWebSpinner.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHWebSpinner.d

# Compiles file ../mod/AvHWelder.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHWelder.d
gccPlaytest-balancedisabled/../mod/AvHWelder.o: ../mod/AvHWelder.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHWelder.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHWelder.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHWelder.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHWelder.d

# Compiles file ggrenade.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/ggrenade.d
gccPlaytest-balancedisabled/ggrenade.o: ggrenade.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ggrenade.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/ggrenade.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ggrenade.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/ggrenade.d

# Compiles file ../mod/AvHParticleSystem.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHParticleSystem.d
gccPlaytest-balancedisabled/../mod/AvHParticleSystem.o: ../mod/AvHParticleSystem.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHParticleSystem.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHParticleSystem.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHParticleSystem.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHParticleSystem.d

# Compiles file ../mod/AvHParticleSystemEntity.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHParticleSystemEntity.d
gccPlaytest-balancedisabled/../mod/AvHParticleSystemEntity.o: ../mod/AvHParticleSystemEntity.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHParticleSystemEntity.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHParticleSystemEntity.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHParticleSystemEntity.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHParticleSystemEntity.d

# Compiles file ../mod/AvHParticleSystemManager.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHParticleSystemManager.d
gccPlaytest-balancedisabled/../mod/AvHParticleSystemManager.o: ../mod/AvHParticleSystemManager.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHParticleSystemManager.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHParticleSystemManager.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHParticleSystemManager.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHParticleSystemManager.d

# Compiles file ../mod/AvHParticleTemplate.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHParticleTemplate.d
gccPlaytest-balancedisabled/../mod/AvHParticleTemplate.o: ../mod/AvHParticleTemplate.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHParticleTemplate.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHParticleTemplate.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHParticleTemplate.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHParticleTemplate.d

# Compiles file ../mod/AvHParticleTemplateServer.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../mod/AvHParticleTemplateServer.d
gccPlaytest-balancedisabled/../mod/AvHParticleTemplateServer.o: ../mod/AvHParticleTemplateServer.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../mod/AvHParticleTemplateServer.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../mod/AvHParticleTemplateServer.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../mod/AvHParticleTemplateServer.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../mod/AvHParticleTemplateServer.d

# Compiles file ../util/Balance.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../util/Balance.d
gccPlaytest-balancedisabled/../util/Balance.o: ../util/Balance.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../util/Balance.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../util/Balance.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../util/Balance.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../util/Balance.d

# Compiles file ../util/Checksum.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../util/Checksum.d
gccPlaytest-balancedisabled/../util/Checksum.o: ../util/Checksum.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../util/Checksum.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../util/Checksum.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../util/Checksum.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../util/Checksum.d

# Compiles file ../util/GammaTable.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../util/GammaTable.d
gccPlaytest-balancedisabled/../util/GammaTable.o: ../util/GammaTable.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../util/GammaTable.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../util/GammaTable.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../util/GammaTable.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../util/GammaTable.d

# Compiles file ../util/LinuxSupport.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../util/LinuxSupport.d
gccPlaytest-balancedisabled/../util/LinuxSupport.o: ../util/LinuxSupport.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../util/LinuxSupport.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../util/LinuxSupport.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../util/LinuxSupport.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../util/LinuxSupport.d

# Compiles file ../util/Mat3.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../util/Mat3.d
gccPlaytest-balancedisabled/../util/Mat3.o: ../util/Mat3.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../util/Mat3.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../util/Mat3.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../util/Mat3.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../util/Mat3.d

# Compiles file ../util/MathUtil.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../util/MathUtil.d
gccPlaytest-balancedisabled/../util/MathUtil.o: ../util/MathUtil.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../util/MathUtil.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../util/MathUtil.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../util/MathUtil.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../util/MathUtil.d

# Compiles file ../util/Quat.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../util/Quat.d
gccPlaytest-balancedisabled/../util/Quat.o: ../util/Quat.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../util/Quat.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../util/Quat.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../util/Quat.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../util/Quat.d

# Compiles file ../util/Stacktrace.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../util/Stacktrace.d
gccPlaytest-balancedisabled/../util/Stacktrace.o: ../util/Stacktrace.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../util/Stacktrace.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../util/Stacktrace.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../util/Stacktrace.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../util/Stacktrace.d

# Compiles file ../util/STLUtil.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../util/STLUtil.d
gccPlaytest-balancedisabled/../util/STLUtil.o: ../util/STLUtil.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../util/STLUtil.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../util/STLUtil.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../util/STLUtil.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../util/STLUtil.d

# Compiles file ../util/Tokenizer.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../util/Tokenizer.d
gccPlaytest-balancedisabled/../util/Tokenizer.o: ../util/Tokenizer.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../util/Tokenizer.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../util/Tokenizer.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../util/Tokenizer.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../util/Tokenizer.d

# Compiles file ../util/Zassert.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../util/Zassert.d
gccPlaytest-balancedisabled/../util/Zassert.o: ../util/Zassert.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../util/Zassert.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../util/Zassert.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../util/Zassert.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../util/Zassert.d

# Compiles file ../util/ZassertTemplate.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../util/ZassertTemplate.d
gccPlaytest-balancedisabled/../util/ZassertTemplate.o: ../util/ZassertTemplate.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../util/ZassertTemplate.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../util/ZassertTemplate.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../util/ZassertTemplate.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../util/ZassertTemplate.d

# Compiles file ../textrep/TRDescription.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../textrep/TRDescription.d
gccPlaytest-balancedisabled/../textrep/TRDescription.o: ../textrep/TRDescription.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../textrep/TRDescription.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../textrep/TRDescription.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../textrep/TRDescription.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../textrep/TRDescription.d

# Compiles file ../textrep/TRFactory.cpp for the Playtest-balancedisabled configuration...
-include gccPlaytest-balancedisabled/../textrep/TRFactory.d
gccPlaytest-balancedisabled/../textrep/TRFactory.o: ../textrep/TRFactory.cpp
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -c ../textrep/TRFactory.cpp $(Playtest-balancedisabled_Include_Path) -o gccPlaytest-balancedisabled/../textrep/TRFactory.o
	$(CPP_COMPILER) $(Playtest-balancedisabled_Preprocessor_Definitions) $(Playtest-balancedisabled_Compiler_Flags) -MM ../textrep/TRFactory.cpp $(Playtest-balancedisabled_Include_Path) > gccPlaytest-balancedisabled/../textrep/TRFactory.d

# Builds the Playtest configuration...
.PHONY: Playtest
Playtest: create_folders gccPlaytest/animating.o gccPlaytest/animation.o gccPlaytest/bmodels.o gccPlaytest/buttons.o gccPlaytest/cbase.o gccPlaytest/client.o gccPlaytest/combat.o gccPlaytest/doors.o gccPlaytest/effects.o gccPlaytest/egon.o gccPlaytest/explode.o gccPlaytest/func_break.o gccPlaytest/func_tank.o gccPlaytest/game.o gccPlaytest/gamerules.o gccPlaytest/gauss.o gccPlaytest/globals.o gccPlaytest/h_ai.o gccPlaytest/h_battery.o gccPlaytest/h_cycler.o gccPlaytest/h_export.o gccPlaytest/items.o gccPlaytest/lights.o gccPlaytest/maprules.o gccPlaytest/mpstubb.o gccPlaytest/multiplay_gamerules.o gccPlaytest/observer.o gccPlaytest/pathcorner.o gccPlaytest/plane.o gccPlaytest/plats.o gccPlaytest/player.o gccPlaytest/../pm_shared/pm_debug.o gccPlaytest/../pm_shared/pm_math.o gccPlaytest/../pm_shared/pm_shared.o gccPlaytest/satchel.o gccPlaytest/shotgun.o gccPlaytest/singleplay_gamerules.o gccPlaytest/skill.o gccPlaytest/sound.o gccPlaytest/soundent.o gccPlaytest/spectator.o gccPlaytest/squeakgrenade.o gccPlaytest/subs.o gccPlaytest/teamplay_gamerules.o gccPlaytest/triggers.o gccPlaytest/turret.o gccPlaytest/util.o gccPlaytest/../game_shared/voice_banmgr.o gccPlaytest/../game_shared/voice_gamemgr.o gccPlaytest/weapons.o gccPlaytest/world.o gccPlaytest/xen.o gccPlaytest/../mod/AnimationUtil.o gccPlaytest/../mod/AvHAlienEquipment.o gccPlaytest/../mod/AvHAlienTurret.o gccPlaytest/../mod/AvHAlienWeapon.o gccPlaytest/../mod/AvHAssert.o gccPlaytest/../mod/AvHBaseBuildable.o gccPlaytest/../mod/AvHBaseInfoLocation.o gccPlaytest/../mod/AvHBuildable.o gccPlaytest/../mod/AvHCloakable.o gccPlaytest/../mod/AvHCombat.o gccPlaytest/../mod/AvHConsoleCommands.o gccPlaytest/../mod/AvHConstants.o gccPlaytest/../mod/AvHCurl.o gccPlaytest/../mod/AvHEntities.o gccPlaytest/../mod/AvHEntityHierarchy.o gccPlaytest/../mod/AvHGamerules.o gccPlaytest/../mod/AvHHive.o gccPlaytest/../mod/AvHMapExtents.o gccPlaytest/../mod/AvHMarineEquipment.o gccPlaytest/../mod/AvHMarineTurret.o gccPlaytest/../mod/AvHMarineWeapon.o gccPlaytest/../mod/AvHMiniMap.o gccPlaytest/../mod/AvHMovementUtil.o gccPlaytest/../mod/AvHNetworkMessages.o gccPlaytest/../mod/AvHNexusServer.o gccPlaytest/../mod/AvHNexusTunnelToClient.o gccPlaytest/../mod/AvHOrder.o gccPlaytest/../mod/AvHPlayer.o gccPlaytest/../mod/AvHPlayerUpgrade.o gccPlaytest/../mod/AvHPushableBuildable.o gccPlaytest/../mod/AvHReinforceable.o gccPlaytest/../mod/AvHResearchManager.o gccPlaytest/../mod/AvHScriptManager.o gccPlaytest/../mod/AvHScriptServer.o gccPlaytest/../mod/AvHScriptShared.o gccPlaytest/../mod/AvHSelectionHelper.o gccPlaytest/../mod/AvHServerPlayerData.o gccPlaytest/../mod/AvHServerUtil.o gccPlaytest/../mod/AvHSharedMovementInfo.o gccPlaytest/../mod/AvHSharedUtil.o gccPlaytest/../mod/AvHSiegeTurret.o gccPlaytest/../mod/AvHSoundListManager.o gccPlaytest/../mod/AvHSpawn.o gccPlaytest/../mod/AvHSpecials.o gccPlaytest/../mod/AvHTeam.o gccPlaytest/../mod/AvHTechNode.o gccPlaytest/../mod/AvHTechSlotManager.o gccPlaytest/../mod/AvHTechTree.o gccPlaytest/../mod/AvHTurret.o gccPlaytest/../mod/AvHVisibleBlipList.o gccPlaytest/../mod/AvHVoiceHelper.o gccPlaytest/../mod/AvHWeldable.o gccPlaytest/../mod/AvHWorldUpdate.o gccPlaytest/../mod/CollisionChecker.o gccPlaytest/../mod/CollisionChecker_ServerOnly.o gccPlaytest/../mod/CollisionUtil.o gccPlaytest/../mod/NetworkMeter.o gccPlaytest/../mod/AvHAcidRocketGun.o gccPlaytest/../mod/AvHAlienAbilities.o gccPlaytest/../mod/AvHBasePlayerWeapon.o gccPlaytest/../mod/AvHBileBombGun.o gccPlaytest/../mod/AvHBite.o gccPlaytest/../mod/AvHBite2.o gccPlaytest/../mod/AvHBlink.o gccPlaytest/../mod/AvHBuildingGun.o gccPlaytest/../mod/AvHClaws.o gccPlaytest/../mod/AvHDevour.o gccPlaytest/../mod/AvHDivineWind.o gccPlaytest/../mod/AvHGrenade.o gccPlaytest/../mod/AvHGrenadeGun.o gccPlaytest/../mod/AvHHealingSpray.o gccPlaytest/../mod/AvHHeavyMachineGun.o gccPlaytest/../mod/AvHItemInfo.o gccPlaytest/../mod/AvHKnife.o gccPlaytest/../mod/AvHMachineGun.o gccPlaytest/../mod/AvHMetabolize.o gccPlaytest/../mod/AvHMine.o gccPlaytest/../mod/AvHParasiteGun.o gccPlaytest/../mod/AvHPistol.o gccPlaytest/../mod/AvHPrimalScream.o gccPlaytest/../mod/AvHSonicGun.o gccPlaytest/../mod/AvHSpikeGun.o gccPlaytest/../mod/AvHSpitGun.o gccPlaytest/../mod/AvHSpores.o gccPlaytest/../mod/AvHStomp.o gccPlaytest/../mod/AvHSwipe.o gccPlaytest/../mod/AvHUmbraGun.o gccPlaytest/../mod/AvHWebSpinner.o gccPlaytest/../mod/AvHWelder.o gccPlaytest/ggrenade.o gccPlaytest/../mod/AvHParticleSystem.o gccPlaytest/../mod/AvHParticleSystemEntity.o gccPlaytest/../mod/AvHParticleSystemManager.o gccPlaytest/../mod/AvHParticleTemplate.o gccPlaytest/../mod/AvHParticleTemplateServer.o gccPlaytest/../util/Balance.o gccPlaytest/../util/Checksum.o gccPlaytest/../util/GammaTable.o gccPlaytest/../util/LinuxSupport.o gccPlaytest/../util/Mat3.o gccPlaytest/../util/MathUtil.o gccPlaytest/../util/Quat.o gccPlaytest/../util/Stacktrace.o gccPlaytest/../util/STLUtil.o gccPlaytest/../util/Tokenizer.o gccPlaytest/../util/Zassert.o gccPlaytest/../util/ZassertTemplate.o gccPlaytest/../textrep/TRDescription.o gccPlaytest/../textrep/TRFactory.o 
	g++ -fPIC -shared -Wl,-soname,libns.dll.so -o ../../../../../../../../ProgramFiles(x86)/Steam/SteamApps/common/Half-Life/ns/gccdlls/libns.dll.so gccPlaytest/animating.o gccPlaytest/animation.o gccPlaytest/bmodels.o gccPlaytest/buttons.o gccPlaytest/cbase.o gccPlaytest/client.o gccPlaytest/combat.o gccPlaytest/doors.o gccPlaytest/effects.o gccPlaytest/egon.o gccPlaytest/explode.o gccPlaytest/func_break.o gccPlaytest/func_tank.o gccPlaytest/game.o gccPlaytest/gamerules.o gccPlaytest/gauss.o gccPlaytest/globals.o gccPlaytest/h_ai.o gccPlaytest/h_battery.o gccPlaytest/h_cycler.o gccPlaytest/h_export.o gccPlaytest/items.o gccPlaytest/lights.o gccPlaytest/maprules.o gccPlaytest/mpstubb.o gccPlaytest/multiplay_gamerules.o gccPlaytest/observer.o gccPlaytest/pathcorner.o gccPlaytest/plane.o gccPlaytest/plats.o gccPlaytest/player.o gccPlaytest/../pm_shared/pm_debug.o gccPlaytest/../pm_shared/pm_math.o gccPlaytest/../pm_shared/pm_shared.o gccPlaytest/satchel.o gccPlaytest/shotgun.o gccPlaytest/singleplay_gamerules.o gccPlaytest/skill.o gccPlaytest/sound.o gccPlaytest/soundent.o gccPlaytest/spectator.o gccPlaytest/squeakgrenade.o gccPlaytest/subs.o gccPlaytest/teamplay_gamerules.o gccPlaytest/triggers.o gccPlaytest/turret.o gccPlaytest/util.o gccPlaytest/../game_shared/voice_banmgr.o gccPlaytest/../game_shared/voice_gamemgr.o gccPlaytest/weapons.o gccPlaytest/world.o gccPlaytest/xen.o gccPlaytest/../mod/AnimationUtil.o gccPlaytest/../mod/AvHAlienEquipment.o gccPlaytest/../mod/AvHAlienTurret.o gccPlaytest/../mod/AvHAlienWeapon.o gccPlaytest/../mod/AvHAssert.o gccPlaytest/../mod/AvHBaseBuildable.o gccPlaytest/../mod/AvHBaseInfoLocation.o gccPlaytest/../mod/AvHBuildable.o gccPlaytest/../mod/AvHCloakable.o gccPlaytest/../mod/AvHCombat.o gccPlaytest/../mod/AvHConsoleCommands.o gccPlaytest/../mod/AvHConstants.o gccPlaytest/../mod/AvHCurl.o gccPlaytest/../mod/AvHEntities.o gccPlaytest/../mod/AvHEntityHierarchy.o gccPlaytest/../mod/AvHGamerules.o gccPlaytest/../mod/AvHHive.o gccPlaytest/../mod/AvHMapExtents.o gccPlaytest/../mod/AvHMarineEquipment.o gccPlaytest/../mod/AvHMarineTurret.o gccPlaytest/../mod/AvHMarineWeapon.o gccPlaytest/../mod/AvHMiniMap.o gccPlaytest/../mod/AvHMovementUtil.o gccPlaytest/../mod/AvHNetworkMessages.o gccPlaytest/../mod/AvHNexusServer.o gccPlaytest/../mod/AvHNexusTunnelToClient.o gccPlaytest/../mod/AvHOrder.o gccPlaytest/../mod/AvHPlayer.o gccPlaytest/../mod/AvHPlayerUpgrade.o gccPlaytest/../mod/AvHPushableBuildable.o gccPlaytest/../mod/AvHReinforceable.o gccPlaytest/../mod/AvHResearchManager.o gccPlaytest/../mod/AvHScriptManager.o gccPlaytest/../mod/AvHScriptServer.o gccPlaytest/../mod/AvHScriptShared.o gccPlaytest/../mod/AvHSelectionHelper.o gccPlaytest/../mod/AvHServerPlayerData.o gccPlaytest/../mod/AvHServerUtil.o gccPlaytest/../mod/AvHSharedMovementInfo.o gccPlaytest/../mod/AvHSharedUtil.o gccPlaytest/../mod/AvHSiegeTurret.o gccPlaytest/../mod/AvHSoundListManager.o gccPlaytest/../mod/AvHSpawn.o gccPlaytest/../mod/AvHSpecials.o gccPlaytest/../mod/AvHTeam.o gccPlaytest/../mod/AvHTechNode.o gccPlaytest/../mod/AvHTechSlotManager.o gccPlaytest/../mod/AvHTechTree.o gccPlaytest/../mod/AvHTurret.o gccPlaytest/../mod/AvHVisibleBlipList.o gccPlaytest/../mod/AvHVoiceHelper.o gccPlaytest/../mod/AvHWeldable.o gccPlaytest/../mod/AvHWorldUpdate.o gccPlaytest/../mod/CollisionChecker.o gccPlaytest/../mod/CollisionChecker_ServerOnly.o gccPlaytest/../mod/CollisionUtil.o gccPlaytest/../mod/NetworkMeter.o gccPlaytest/../mod/AvHAcidRocketGun.o gccPlaytest/../mod/AvHAlienAbilities.o gccPlaytest/../mod/AvHBasePlayerWeapon.o gccPlaytest/../mod/AvHBileBombGun.o gccPlaytest/../mod/AvHBite.o gccPlaytest/../mod/AvHBite2.o gccPlaytest/../mod/AvHBlink.o gccPlaytest/../mod/AvHBuildingGun.o gccPlaytest/../mod/AvHClaws.o gccPlaytest/../mod/AvHDevour.o gccPlaytest/../mod/AvHDivineWind.o gccPlaytest/../mod/AvHGrenade.o gccPlaytest/../mod/AvHGrenadeGun.o gccPlaytest/../mod/AvHHealingSpray.o gccPlaytest/../mod/AvHHeavyMachineGun.o gccPlaytest/../mod/AvHItemInfo.o gccPlaytest/../mod/AvHKnife.o gccPlaytest/../mod/AvHMachineGun.o gccPlaytest/../mod/AvHMetabolize.o gccPlaytest/../mod/AvHMine.o gccPlaytest/../mod/AvHParasiteGun.o gccPlaytest/../mod/AvHPistol.o gccPlaytest/../mod/AvHPrimalScream.o gccPlaytest/../mod/AvHSonicGun.o gccPlaytest/../mod/AvHSpikeGun.o gccPlaytest/../mod/AvHSpitGun.o gccPlaytest/../mod/AvHSpores.o gccPlaytest/../mod/AvHStomp.o gccPlaytest/../mod/AvHSwipe.o gccPlaytest/../mod/AvHUmbraGun.o gccPlaytest/../mod/AvHWebSpinner.o gccPlaytest/../mod/AvHWelder.o gccPlaytest/ggrenade.o gccPlaytest/../mod/AvHParticleSystem.o gccPlaytest/../mod/AvHParticleSystemEntity.o gccPlaytest/../mod/AvHParticleSystemManager.o gccPlaytest/../mod/AvHParticleTemplate.o gccPlaytest/../mod/AvHParticleTemplateServer.o gccPlaytest/../util/Balance.o gccPlaytest/../util/Checksum.o gccPlaytest/../util/GammaTable.o gccPlaytest/../util/LinuxSupport.o gccPlaytest/../util/Mat3.o gccPlaytest/../util/MathUtil.o gccPlaytest/../util/Quat.o gccPlaytest/../util/Stacktrace.o gccPlaytest/../util/STLUtil.o gccPlaytest/../util/Tokenizer.o gccPlaytest/../util/Zassert.o gccPlaytest/../util/ZassertTemplate.o gccPlaytest/../textrep/TRDescription.o gccPlaytest/../textrep/TRFactory.o  $(Playtest_Implicitly_Linked_Objects)

# Compiles file animating.cpp for the Playtest configuration...
-include gccPlaytest/animating.d
gccPlaytest/animating.o: animating.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c animating.cpp $(Playtest_Include_Path) -o gccPlaytest/animating.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM animating.cpp $(Playtest_Include_Path) > gccPlaytest/animating.d

# Compiles file animation.cpp for the Playtest configuration...
-include gccPlaytest/animation.d
gccPlaytest/animation.o: animation.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c animation.cpp $(Playtest_Include_Path) -o gccPlaytest/animation.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM animation.cpp $(Playtest_Include_Path) > gccPlaytest/animation.d

# Compiles file bmodels.cpp for the Playtest configuration...
-include gccPlaytest/bmodels.d
gccPlaytest/bmodels.o: bmodels.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c bmodels.cpp $(Playtest_Include_Path) -o gccPlaytest/bmodels.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM bmodels.cpp $(Playtest_Include_Path) > gccPlaytest/bmodels.d

# Compiles file buttons.cpp for the Playtest configuration...
-include gccPlaytest/buttons.d
gccPlaytest/buttons.o: buttons.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c buttons.cpp $(Playtest_Include_Path) -o gccPlaytest/buttons.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM buttons.cpp $(Playtest_Include_Path) > gccPlaytest/buttons.d

# Compiles file cbase.cpp for the Playtest configuration...
-include gccPlaytest/cbase.d
gccPlaytest/cbase.o: cbase.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c cbase.cpp $(Playtest_Include_Path) -o gccPlaytest/cbase.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM cbase.cpp $(Playtest_Include_Path) > gccPlaytest/cbase.d

# Compiles file client.cpp for the Playtest configuration...
-include gccPlaytest/client.d
gccPlaytest/client.o: client.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c client.cpp $(Playtest_Include_Path) -o gccPlaytest/client.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM client.cpp $(Playtest_Include_Path) > gccPlaytest/client.d

# Compiles file combat.cpp for the Playtest configuration...
-include gccPlaytest/combat.d
gccPlaytest/combat.o: combat.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c combat.cpp $(Playtest_Include_Path) -o gccPlaytest/combat.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM combat.cpp $(Playtest_Include_Path) > gccPlaytest/combat.d

# Compiles file doors.cpp for the Playtest configuration...
-include gccPlaytest/doors.d
gccPlaytest/doors.o: doors.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c doors.cpp $(Playtest_Include_Path) -o gccPlaytest/doors.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM doors.cpp $(Playtest_Include_Path) > gccPlaytest/doors.d

# Compiles file effects.cpp for the Playtest configuration...
-include gccPlaytest/effects.d
gccPlaytest/effects.o: effects.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c effects.cpp $(Playtest_Include_Path) -o gccPlaytest/effects.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM effects.cpp $(Playtest_Include_Path) > gccPlaytest/effects.d

# Compiles file egon.cpp for the Playtest configuration...
-include gccPlaytest/egon.d
gccPlaytest/egon.o: egon.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c egon.cpp $(Playtest_Include_Path) -o gccPlaytest/egon.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM egon.cpp $(Playtest_Include_Path) > gccPlaytest/egon.d

# Compiles file explode.cpp for the Playtest configuration...
-include gccPlaytest/explode.d
gccPlaytest/explode.o: explode.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c explode.cpp $(Playtest_Include_Path) -o gccPlaytest/explode.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM explode.cpp $(Playtest_Include_Path) > gccPlaytest/explode.d

# Compiles file func_break.cpp for the Playtest configuration...
-include gccPlaytest/func_break.d
gccPlaytest/func_break.o: func_break.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c func_break.cpp $(Playtest_Include_Path) -o gccPlaytest/func_break.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM func_break.cpp $(Playtest_Include_Path) > gccPlaytest/func_break.d

# Compiles file func_tank.cpp for the Playtest configuration...
-include gccPlaytest/func_tank.d
gccPlaytest/func_tank.o: func_tank.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c func_tank.cpp $(Playtest_Include_Path) -o gccPlaytest/func_tank.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM func_tank.cpp $(Playtest_Include_Path) > gccPlaytest/func_tank.d

# Compiles file game.cpp for the Playtest configuration...
-include gccPlaytest/game.d
gccPlaytest/game.o: game.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c game.cpp $(Playtest_Include_Path) -o gccPlaytest/game.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM game.cpp $(Playtest_Include_Path) > gccPlaytest/game.d

# Compiles file gamerules.cpp for the Playtest configuration...
-include gccPlaytest/gamerules.d
gccPlaytest/gamerules.o: gamerules.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c gamerules.cpp $(Playtest_Include_Path) -o gccPlaytest/gamerules.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM gamerules.cpp $(Playtest_Include_Path) > gccPlaytest/gamerules.d

# Compiles file gauss.cpp for the Playtest configuration...
-include gccPlaytest/gauss.d
gccPlaytest/gauss.o: gauss.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c gauss.cpp $(Playtest_Include_Path) -o gccPlaytest/gauss.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM gauss.cpp $(Playtest_Include_Path) > gccPlaytest/gauss.d

# Compiles file globals.cpp for the Playtest configuration...
-include gccPlaytest/globals.d
gccPlaytest/globals.o: globals.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c globals.cpp $(Playtest_Include_Path) -o gccPlaytest/globals.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM globals.cpp $(Playtest_Include_Path) > gccPlaytest/globals.d

# Compiles file h_ai.cpp for the Playtest configuration...
-include gccPlaytest/h_ai.d
gccPlaytest/h_ai.o: h_ai.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c h_ai.cpp $(Playtest_Include_Path) -o gccPlaytest/h_ai.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM h_ai.cpp $(Playtest_Include_Path) > gccPlaytest/h_ai.d

# Compiles file h_battery.cpp for the Playtest configuration...
-include gccPlaytest/h_battery.d
gccPlaytest/h_battery.o: h_battery.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c h_battery.cpp $(Playtest_Include_Path) -o gccPlaytest/h_battery.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM h_battery.cpp $(Playtest_Include_Path) > gccPlaytest/h_battery.d

# Compiles file h_cycler.cpp for the Playtest configuration...
-include gccPlaytest/h_cycler.d
gccPlaytest/h_cycler.o: h_cycler.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c h_cycler.cpp $(Playtest_Include_Path) -o gccPlaytest/h_cycler.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM h_cycler.cpp $(Playtest_Include_Path) > gccPlaytest/h_cycler.d

# Compiles file h_export.cpp for the Playtest configuration...
-include gccPlaytest/h_export.d
gccPlaytest/h_export.o: h_export.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c h_export.cpp $(Playtest_Include_Path) -o gccPlaytest/h_export.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM h_export.cpp $(Playtest_Include_Path) > gccPlaytest/h_export.d

# Compiles file items.cpp for the Playtest configuration...
-include gccPlaytest/items.d
gccPlaytest/items.o: items.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c items.cpp $(Playtest_Include_Path) -o gccPlaytest/items.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM items.cpp $(Playtest_Include_Path) > gccPlaytest/items.d

# Compiles file lights.cpp for the Playtest configuration...
-include gccPlaytest/lights.d
gccPlaytest/lights.o: lights.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c lights.cpp $(Playtest_Include_Path) -o gccPlaytest/lights.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM lights.cpp $(Playtest_Include_Path) > gccPlaytest/lights.d

# Compiles file maprules.cpp for the Playtest configuration...
-include gccPlaytest/maprules.d
gccPlaytest/maprules.o: maprules.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c maprules.cpp $(Playtest_Include_Path) -o gccPlaytest/maprules.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM maprules.cpp $(Playtest_Include_Path) > gccPlaytest/maprules.d

# Compiles file mpstubb.cpp for the Playtest configuration...
-include gccPlaytest/mpstubb.d
gccPlaytest/mpstubb.o: mpstubb.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c mpstubb.cpp $(Playtest_Include_Path) -o gccPlaytest/mpstubb.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM mpstubb.cpp $(Playtest_Include_Path) > gccPlaytest/mpstubb.d

# Compiles file multiplay_gamerules.cpp for the Playtest configuration...
-include gccPlaytest/multiplay_gamerules.d
gccPlaytest/multiplay_gamerules.o: multiplay_gamerules.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c multiplay_gamerules.cpp $(Playtest_Include_Path) -o gccPlaytest/multiplay_gamerules.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM multiplay_gamerules.cpp $(Playtest_Include_Path) > gccPlaytest/multiplay_gamerules.d

# Compiles file observer.cpp for the Playtest configuration...
-include gccPlaytest/observer.d
gccPlaytest/observer.o: observer.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c observer.cpp $(Playtest_Include_Path) -o gccPlaytest/observer.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM observer.cpp $(Playtest_Include_Path) > gccPlaytest/observer.d

# Compiles file pathcorner.cpp for the Playtest configuration...
-include gccPlaytest/pathcorner.d
gccPlaytest/pathcorner.o: pathcorner.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c pathcorner.cpp $(Playtest_Include_Path) -o gccPlaytest/pathcorner.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM pathcorner.cpp $(Playtest_Include_Path) > gccPlaytest/pathcorner.d

# Compiles file plane.cpp for the Playtest configuration...
-include gccPlaytest/plane.d
gccPlaytest/plane.o: plane.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c plane.cpp $(Playtest_Include_Path) -o gccPlaytest/plane.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM plane.cpp $(Playtest_Include_Path) > gccPlaytest/plane.d

# Compiles file plats.cpp for the Playtest configuration...
-include gccPlaytest/plats.d
gccPlaytest/plats.o: plats.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c plats.cpp $(Playtest_Include_Path) -o gccPlaytest/plats.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM plats.cpp $(Playtest_Include_Path) > gccPlaytest/plats.d

# Compiles file player.cpp for the Playtest configuration...
-include gccPlaytest/player.d
gccPlaytest/player.o: player.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c player.cpp $(Playtest_Include_Path) -o gccPlaytest/player.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM player.cpp $(Playtest_Include_Path) > gccPlaytest/player.d

# Compiles file ../pm_shared/pm_debug.cpp for the Playtest configuration...
-include gccPlaytest/../pm_shared/pm_debug.d
gccPlaytest/../pm_shared/pm_debug.o: ../pm_shared/pm_debug.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../pm_shared/pm_debug.cpp $(Playtest_Include_Path) -o gccPlaytest/../pm_shared/pm_debug.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../pm_shared/pm_debug.cpp $(Playtest_Include_Path) > gccPlaytest/../pm_shared/pm_debug.d

# Compiles file ../pm_shared/pm_math.cpp for the Playtest configuration...
-include gccPlaytest/../pm_shared/pm_math.d
gccPlaytest/../pm_shared/pm_math.o: ../pm_shared/pm_math.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../pm_shared/pm_math.cpp $(Playtest_Include_Path) -o gccPlaytest/../pm_shared/pm_math.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../pm_shared/pm_math.cpp $(Playtest_Include_Path) > gccPlaytest/../pm_shared/pm_math.d

# Compiles file ../pm_shared/pm_shared.cpp for the Playtest configuration...
-include gccPlaytest/../pm_shared/pm_shared.d
gccPlaytest/../pm_shared/pm_shared.o: ../pm_shared/pm_shared.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../pm_shared/pm_shared.cpp $(Playtest_Include_Path) -o gccPlaytest/../pm_shared/pm_shared.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../pm_shared/pm_shared.cpp $(Playtest_Include_Path) > gccPlaytest/../pm_shared/pm_shared.d

# Compiles file satchel.cpp for the Playtest configuration...
-include gccPlaytest/satchel.d
gccPlaytest/satchel.o: satchel.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c satchel.cpp $(Playtest_Include_Path) -o gccPlaytest/satchel.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM satchel.cpp $(Playtest_Include_Path) > gccPlaytest/satchel.d

# Compiles file shotgun.cpp for the Playtest configuration...
-include gccPlaytest/shotgun.d
gccPlaytest/shotgun.o: shotgun.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c shotgun.cpp $(Playtest_Include_Path) -o gccPlaytest/shotgun.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM shotgun.cpp $(Playtest_Include_Path) > gccPlaytest/shotgun.d

# Compiles file singleplay_gamerules.cpp for the Playtest configuration...
-include gccPlaytest/singleplay_gamerules.d
gccPlaytest/singleplay_gamerules.o: singleplay_gamerules.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c singleplay_gamerules.cpp $(Playtest_Include_Path) -o gccPlaytest/singleplay_gamerules.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM singleplay_gamerules.cpp $(Playtest_Include_Path) > gccPlaytest/singleplay_gamerules.d

# Compiles file skill.cpp for the Playtest configuration...
-include gccPlaytest/skill.d
gccPlaytest/skill.o: skill.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c skill.cpp $(Playtest_Include_Path) -o gccPlaytest/skill.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM skill.cpp $(Playtest_Include_Path) > gccPlaytest/skill.d

# Compiles file sound.cpp for the Playtest configuration...
-include gccPlaytest/sound.d
gccPlaytest/sound.o: sound.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c sound.cpp $(Playtest_Include_Path) -o gccPlaytest/sound.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM sound.cpp $(Playtest_Include_Path) > gccPlaytest/sound.d

# Compiles file soundent.cpp for the Playtest configuration...
-include gccPlaytest/soundent.d
gccPlaytest/soundent.o: soundent.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c soundent.cpp $(Playtest_Include_Path) -o gccPlaytest/soundent.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM soundent.cpp $(Playtest_Include_Path) > gccPlaytest/soundent.d

# Compiles file spectator.cpp for the Playtest configuration...
-include gccPlaytest/spectator.d
gccPlaytest/spectator.o: spectator.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c spectator.cpp $(Playtest_Include_Path) -o gccPlaytest/spectator.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM spectator.cpp $(Playtest_Include_Path) > gccPlaytest/spectator.d

# Compiles file squeakgrenade.cpp for the Playtest configuration...
-include gccPlaytest/squeakgrenade.d
gccPlaytest/squeakgrenade.o: squeakgrenade.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c squeakgrenade.cpp $(Playtest_Include_Path) -o gccPlaytest/squeakgrenade.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM squeakgrenade.cpp $(Playtest_Include_Path) > gccPlaytest/squeakgrenade.d

# Compiles file subs.cpp for the Playtest configuration...
-include gccPlaytest/subs.d
gccPlaytest/subs.o: subs.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c subs.cpp $(Playtest_Include_Path) -o gccPlaytest/subs.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM subs.cpp $(Playtest_Include_Path) > gccPlaytest/subs.d

# Compiles file teamplay_gamerules.cpp for the Playtest configuration...
-include gccPlaytest/teamplay_gamerules.d
gccPlaytest/teamplay_gamerules.o: teamplay_gamerules.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c teamplay_gamerules.cpp $(Playtest_Include_Path) -o gccPlaytest/teamplay_gamerules.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM teamplay_gamerules.cpp $(Playtest_Include_Path) > gccPlaytest/teamplay_gamerules.d

# Compiles file triggers.cpp for the Playtest configuration...
-include gccPlaytest/triggers.d
gccPlaytest/triggers.o: triggers.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c triggers.cpp $(Playtest_Include_Path) -o gccPlaytest/triggers.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM triggers.cpp $(Playtest_Include_Path) > gccPlaytest/triggers.d

# Compiles file turret.cpp for the Playtest configuration...
-include gccPlaytest/turret.d
gccPlaytest/turret.o: turret.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c turret.cpp $(Playtest_Include_Path) -o gccPlaytest/turret.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM turret.cpp $(Playtest_Include_Path) > gccPlaytest/turret.d

# Compiles file util.cpp for the Playtest configuration...
-include gccPlaytest/util.d
gccPlaytest/util.o: util.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c util.cpp $(Playtest_Include_Path) -o gccPlaytest/util.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM util.cpp $(Playtest_Include_Path) > gccPlaytest/util.d

# Compiles file ../game_shared/voice_banmgr.cpp for the Playtest configuration...
-include gccPlaytest/../game_shared/voice_banmgr.d
gccPlaytest/../game_shared/voice_banmgr.o: ../game_shared/voice_banmgr.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../game_shared/voice_banmgr.cpp $(Playtest_Include_Path) -o gccPlaytest/../game_shared/voice_banmgr.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../game_shared/voice_banmgr.cpp $(Playtest_Include_Path) > gccPlaytest/../game_shared/voice_banmgr.d

# Compiles file ../game_shared/voice_gamemgr.cpp for the Playtest configuration...
-include gccPlaytest/../game_shared/voice_gamemgr.d
gccPlaytest/../game_shared/voice_gamemgr.o: ../game_shared/voice_gamemgr.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../game_shared/voice_gamemgr.cpp $(Playtest_Include_Path) -o gccPlaytest/../game_shared/voice_gamemgr.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../game_shared/voice_gamemgr.cpp $(Playtest_Include_Path) > gccPlaytest/../game_shared/voice_gamemgr.d

# Compiles file weapons.cpp for the Playtest configuration...
-include gccPlaytest/weapons.d
gccPlaytest/weapons.o: weapons.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c weapons.cpp $(Playtest_Include_Path) -o gccPlaytest/weapons.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM weapons.cpp $(Playtest_Include_Path) > gccPlaytest/weapons.d

# Compiles file world.cpp for the Playtest configuration...
-include gccPlaytest/world.d
gccPlaytest/world.o: world.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c world.cpp $(Playtest_Include_Path) -o gccPlaytest/world.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM world.cpp $(Playtest_Include_Path) > gccPlaytest/world.d

# Compiles file xen.cpp for the Playtest configuration...
-include gccPlaytest/xen.d
gccPlaytest/xen.o: xen.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c xen.cpp $(Playtest_Include_Path) -o gccPlaytest/xen.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM xen.cpp $(Playtest_Include_Path) > gccPlaytest/xen.d

# Compiles file ../mod/AnimationUtil.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AnimationUtil.d
gccPlaytest/../mod/AnimationUtil.o: ../mod/AnimationUtil.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AnimationUtil.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AnimationUtil.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AnimationUtil.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AnimationUtil.d

# Compiles file ../mod/AvHAlienEquipment.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHAlienEquipment.d
gccPlaytest/../mod/AvHAlienEquipment.o: ../mod/AvHAlienEquipment.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHAlienEquipment.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHAlienEquipment.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHAlienEquipment.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHAlienEquipment.d

# Compiles file ../mod/AvHAlienTurret.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHAlienTurret.d
gccPlaytest/../mod/AvHAlienTurret.o: ../mod/AvHAlienTurret.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHAlienTurret.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHAlienTurret.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHAlienTurret.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHAlienTurret.d

# Compiles file ../mod/AvHAlienWeapon.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHAlienWeapon.d
gccPlaytest/../mod/AvHAlienWeapon.o: ../mod/AvHAlienWeapon.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHAlienWeapon.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHAlienWeapon.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHAlienWeapon.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHAlienWeapon.d

# Compiles file ../mod/AvHAssert.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHAssert.d
gccPlaytest/../mod/AvHAssert.o: ../mod/AvHAssert.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHAssert.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHAssert.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHAssert.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHAssert.d

# Compiles file ../mod/AvHBaseBuildable.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHBaseBuildable.d
gccPlaytest/../mod/AvHBaseBuildable.o: ../mod/AvHBaseBuildable.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHBaseBuildable.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHBaseBuildable.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHBaseBuildable.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHBaseBuildable.d

# Compiles file ../mod/AvHBaseInfoLocation.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHBaseInfoLocation.d
gccPlaytest/../mod/AvHBaseInfoLocation.o: ../mod/AvHBaseInfoLocation.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHBaseInfoLocation.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHBaseInfoLocation.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHBaseInfoLocation.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHBaseInfoLocation.d

# Compiles file ../mod/AvHBuildable.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHBuildable.d
gccPlaytest/../mod/AvHBuildable.o: ../mod/AvHBuildable.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHBuildable.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHBuildable.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHBuildable.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHBuildable.d

# Compiles file ../mod/AvHCloakable.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHCloakable.d
gccPlaytest/../mod/AvHCloakable.o: ../mod/AvHCloakable.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHCloakable.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHCloakable.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHCloakable.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHCloakable.d

# Compiles file ../mod/AvHCombat.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHCombat.d
gccPlaytest/../mod/AvHCombat.o: ../mod/AvHCombat.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHCombat.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHCombat.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHCombat.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHCombat.d

# Compiles file ../mod/AvHConsoleCommands.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHConsoleCommands.d
gccPlaytest/../mod/AvHConsoleCommands.o: ../mod/AvHConsoleCommands.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHConsoleCommands.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHConsoleCommands.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHConsoleCommands.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHConsoleCommands.d

# Compiles file ../mod/AvHConstants.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHConstants.d
gccPlaytest/../mod/AvHConstants.o: ../mod/AvHConstants.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHConstants.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHConstants.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHConstants.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHConstants.d

# Compiles file ../mod/AvHCurl.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHCurl.d
gccPlaytest/../mod/AvHCurl.o: ../mod/AvHCurl.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHCurl.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHCurl.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHCurl.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHCurl.d

# Compiles file ../mod/AvHEntities.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHEntities.d
gccPlaytest/../mod/AvHEntities.o: ../mod/AvHEntities.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHEntities.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHEntities.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHEntities.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHEntities.d

# Compiles file ../mod/AvHEntityHierarchy.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHEntityHierarchy.d
gccPlaytest/../mod/AvHEntityHierarchy.o: ../mod/AvHEntityHierarchy.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHEntityHierarchy.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHEntityHierarchy.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHEntityHierarchy.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHEntityHierarchy.d

# Compiles file ../mod/AvHGamerules.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHGamerules.d
gccPlaytest/../mod/AvHGamerules.o: ../mod/AvHGamerules.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHGamerules.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHGamerules.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHGamerules.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHGamerules.d

# Compiles file ../mod/AvHHive.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHHive.d
gccPlaytest/../mod/AvHHive.o: ../mod/AvHHive.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHHive.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHHive.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHHive.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHHive.d

# Compiles file ../mod/AvHMapExtents.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHMapExtents.d
gccPlaytest/../mod/AvHMapExtents.o: ../mod/AvHMapExtents.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHMapExtents.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHMapExtents.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHMapExtents.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHMapExtents.d

# Compiles file ../mod/AvHMarineEquipment.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHMarineEquipment.d
gccPlaytest/../mod/AvHMarineEquipment.o: ../mod/AvHMarineEquipment.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHMarineEquipment.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHMarineEquipment.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHMarineEquipment.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHMarineEquipment.d

# Compiles file ../mod/AvHMarineTurret.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHMarineTurret.d
gccPlaytest/../mod/AvHMarineTurret.o: ../mod/AvHMarineTurret.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHMarineTurret.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHMarineTurret.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHMarineTurret.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHMarineTurret.d

# Compiles file ../mod/AvHMarineWeapon.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHMarineWeapon.d
gccPlaytest/../mod/AvHMarineWeapon.o: ../mod/AvHMarineWeapon.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHMarineWeapon.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHMarineWeapon.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHMarineWeapon.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHMarineWeapon.d

# Compiles file ../mod/AvHMiniMap.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHMiniMap.d
gccPlaytest/../mod/AvHMiniMap.o: ../mod/AvHMiniMap.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHMiniMap.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHMiniMap.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHMiniMap.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHMiniMap.d

# Compiles file ../mod/AvHMovementUtil.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHMovementUtil.d
gccPlaytest/../mod/AvHMovementUtil.o: ../mod/AvHMovementUtil.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHMovementUtil.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHMovementUtil.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHMovementUtil.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHMovementUtil.d

# Compiles file ../mod/AvHNetworkMessages.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHNetworkMessages.d
gccPlaytest/../mod/AvHNetworkMessages.o: ../mod/AvHNetworkMessages.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHNetworkMessages.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHNetworkMessages.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHNetworkMessages.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHNetworkMessages.d

# Compiles file ../mod/AvHNexusServer.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHNexusServer.d
gccPlaytest/../mod/AvHNexusServer.o: ../mod/AvHNexusServer.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHNexusServer.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHNexusServer.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHNexusServer.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHNexusServer.d

# Compiles file ../mod/AvHNexusTunnelToClient.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHNexusTunnelToClient.d
gccPlaytest/../mod/AvHNexusTunnelToClient.o: ../mod/AvHNexusTunnelToClient.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHNexusTunnelToClient.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHNexusTunnelToClient.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHNexusTunnelToClient.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHNexusTunnelToClient.d

# Compiles file ../mod/AvHOrder.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHOrder.d
gccPlaytest/../mod/AvHOrder.o: ../mod/AvHOrder.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHOrder.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHOrder.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHOrder.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHOrder.d

# Compiles file ../mod/AvHPlayer.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHPlayer.d
gccPlaytest/../mod/AvHPlayer.o: ../mod/AvHPlayer.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHPlayer.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHPlayer.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHPlayer.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHPlayer.d

# Compiles file ../mod/AvHPlayerUpgrade.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHPlayerUpgrade.d
gccPlaytest/../mod/AvHPlayerUpgrade.o: ../mod/AvHPlayerUpgrade.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHPlayerUpgrade.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHPlayerUpgrade.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHPlayerUpgrade.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHPlayerUpgrade.d

# Compiles file ../mod/AvHPushableBuildable.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHPushableBuildable.d
gccPlaytest/../mod/AvHPushableBuildable.o: ../mod/AvHPushableBuildable.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHPushableBuildable.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHPushableBuildable.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHPushableBuildable.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHPushableBuildable.d

# Compiles file ../mod/AvHReinforceable.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHReinforceable.d
gccPlaytest/../mod/AvHReinforceable.o: ../mod/AvHReinforceable.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHReinforceable.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHReinforceable.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHReinforceable.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHReinforceable.d

# Compiles file ../mod/AvHResearchManager.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHResearchManager.d
gccPlaytest/../mod/AvHResearchManager.o: ../mod/AvHResearchManager.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHResearchManager.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHResearchManager.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHResearchManager.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHResearchManager.d

# Compiles file ../mod/AvHScriptManager.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHScriptManager.d
gccPlaytest/../mod/AvHScriptManager.o: ../mod/AvHScriptManager.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHScriptManager.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHScriptManager.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHScriptManager.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHScriptManager.d

# Compiles file ../mod/AvHScriptServer.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHScriptServer.d
gccPlaytest/../mod/AvHScriptServer.o: ../mod/AvHScriptServer.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHScriptServer.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHScriptServer.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHScriptServer.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHScriptServer.d

# Compiles file ../mod/AvHScriptShared.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHScriptShared.d
gccPlaytest/../mod/AvHScriptShared.o: ../mod/AvHScriptShared.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHScriptShared.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHScriptShared.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHScriptShared.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHScriptShared.d

# Compiles file ../mod/AvHSelectionHelper.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHSelectionHelper.d
gccPlaytest/../mod/AvHSelectionHelper.o: ../mod/AvHSelectionHelper.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHSelectionHelper.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHSelectionHelper.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHSelectionHelper.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHSelectionHelper.d

# Compiles file ../mod/AvHServerPlayerData.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHServerPlayerData.d
gccPlaytest/../mod/AvHServerPlayerData.o: ../mod/AvHServerPlayerData.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHServerPlayerData.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHServerPlayerData.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHServerPlayerData.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHServerPlayerData.d

# Compiles file ../mod/AvHServerUtil.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHServerUtil.d
gccPlaytest/../mod/AvHServerUtil.o: ../mod/AvHServerUtil.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHServerUtil.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHServerUtil.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHServerUtil.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHServerUtil.d

# Compiles file ../mod/AvHSharedMovementInfo.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHSharedMovementInfo.d
gccPlaytest/../mod/AvHSharedMovementInfo.o: ../mod/AvHSharedMovementInfo.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHSharedMovementInfo.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHSharedMovementInfo.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHSharedMovementInfo.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHSharedMovementInfo.d

# Compiles file ../mod/AvHSharedUtil.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHSharedUtil.d
gccPlaytest/../mod/AvHSharedUtil.o: ../mod/AvHSharedUtil.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHSharedUtil.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHSharedUtil.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHSharedUtil.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHSharedUtil.d

# Compiles file ../mod/AvHSiegeTurret.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHSiegeTurret.d
gccPlaytest/../mod/AvHSiegeTurret.o: ../mod/AvHSiegeTurret.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHSiegeTurret.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHSiegeTurret.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHSiegeTurret.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHSiegeTurret.d

# Compiles file ../mod/AvHSoundListManager.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHSoundListManager.d
gccPlaytest/../mod/AvHSoundListManager.o: ../mod/AvHSoundListManager.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHSoundListManager.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHSoundListManager.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHSoundListManager.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHSoundListManager.d

# Compiles file ../mod/AvHSpawn.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHSpawn.d
gccPlaytest/../mod/AvHSpawn.o: ../mod/AvHSpawn.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHSpawn.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHSpawn.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHSpawn.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHSpawn.d

# Compiles file ../mod/AvHSpecials.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHSpecials.d
gccPlaytest/../mod/AvHSpecials.o: ../mod/AvHSpecials.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHSpecials.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHSpecials.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHSpecials.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHSpecials.d

# Compiles file ../mod/AvHTeam.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHTeam.d
gccPlaytest/../mod/AvHTeam.o: ../mod/AvHTeam.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHTeam.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHTeam.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHTeam.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHTeam.d

# Compiles file ../mod/AvHTechNode.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHTechNode.d
gccPlaytest/../mod/AvHTechNode.o: ../mod/AvHTechNode.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHTechNode.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHTechNode.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHTechNode.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHTechNode.d

# Compiles file ../mod/AvHTechSlotManager.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHTechSlotManager.d
gccPlaytest/../mod/AvHTechSlotManager.o: ../mod/AvHTechSlotManager.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHTechSlotManager.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHTechSlotManager.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHTechSlotManager.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHTechSlotManager.d

# Compiles file ../mod/AvHTechTree.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHTechTree.d
gccPlaytest/../mod/AvHTechTree.o: ../mod/AvHTechTree.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHTechTree.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHTechTree.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHTechTree.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHTechTree.d

# Compiles file ../mod/AvHTurret.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHTurret.d
gccPlaytest/../mod/AvHTurret.o: ../mod/AvHTurret.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHTurret.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHTurret.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHTurret.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHTurret.d

# Compiles file ../mod/AvHVisibleBlipList.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHVisibleBlipList.d
gccPlaytest/../mod/AvHVisibleBlipList.o: ../mod/AvHVisibleBlipList.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHVisibleBlipList.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHVisibleBlipList.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHVisibleBlipList.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHVisibleBlipList.d

# Compiles file ../mod/AvHVoiceHelper.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHVoiceHelper.d
gccPlaytest/../mod/AvHVoiceHelper.o: ../mod/AvHVoiceHelper.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHVoiceHelper.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHVoiceHelper.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHVoiceHelper.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHVoiceHelper.d

# Compiles file ../mod/AvHWeldable.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHWeldable.d
gccPlaytest/../mod/AvHWeldable.o: ../mod/AvHWeldable.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHWeldable.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHWeldable.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHWeldable.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHWeldable.d

# Compiles file ../mod/AvHWorldUpdate.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHWorldUpdate.d
gccPlaytest/../mod/AvHWorldUpdate.o: ../mod/AvHWorldUpdate.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHWorldUpdate.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHWorldUpdate.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHWorldUpdate.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHWorldUpdate.d

# Compiles file ../mod/CollisionChecker.cpp for the Playtest configuration...
-include gccPlaytest/../mod/CollisionChecker.d
gccPlaytest/../mod/CollisionChecker.o: ../mod/CollisionChecker.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/CollisionChecker.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/CollisionChecker.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/CollisionChecker.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/CollisionChecker.d

# Compiles file ../mod/CollisionChecker_ServerOnly.cpp for the Playtest configuration...
-include gccPlaytest/../mod/CollisionChecker_ServerOnly.d
gccPlaytest/../mod/CollisionChecker_ServerOnly.o: ../mod/CollisionChecker_ServerOnly.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/CollisionChecker_ServerOnly.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/CollisionChecker_ServerOnly.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/CollisionChecker_ServerOnly.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/CollisionChecker_ServerOnly.d

# Compiles file ../mod/CollisionUtil.cpp for the Playtest configuration...
-include gccPlaytest/../mod/CollisionUtil.d
gccPlaytest/../mod/CollisionUtil.o: ../mod/CollisionUtil.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/CollisionUtil.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/CollisionUtil.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/CollisionUtil.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/CollisionUtil.d

# Compiles file ../mod/NetworkMeter.cpp for the Playtest configuration...
-include gccPlaytest/../mod/NetworkMeter.d
gccPlaytest/../mod/NetworkMeter.o: ../mod/NetworkMeter.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/NetworkMeter.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/NetworkMeter.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/NetworkMeter.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/NetworkMeter.d

# Compiles file ../mod/AvHAcidRocketGun.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHAcidRocketGun.d
gccPlaytest/../mod/AvHAcidRocketGun.o: ../mod/AvHAcidRocketGun.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHAcidRocketGun.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHAcidRocketGun.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHAcidRocketGun.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHAcidRocketGun.d

# Compiles file ../mod/AvHAlienAbilities.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHAlienAbilities.d
gccPlaytest/../mod/AvHAlienAbilities.o: ../mod/AvHAlienAbilities.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHAlienAbilities.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHAlienAbilities.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHAlienAbilities.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHAlienAbilities.d

# Compiles file ../mod/AvHBasePlayerWeapon.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHBasePlayerWeapon.d
gccPlaytest/../mod/AvHBasePlayerWeapon.o: ../mod/AvHBasePlayerWeapon.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHBasePlayerWeapon.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHBasePlayerWeapon.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHBasePlayerWeapon.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHBasePlayerWeapon.d

# Compiles file ../mod/AvHBileBombGun.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHBileBombGun.d
gccPlaytest/../mod/AvHBileBombGun.o: ../mod/AvHBileBombGun.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHBileBombGun.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHBileBombGun.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHBileBombGun.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHBileBombGun.d

# Compiles file ../mod/AvHBite.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHBite.d
gccPlaytest/../mod/AvHBite.o: ../mod/AvHBite.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHBite.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHBite.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHBite.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHBite.d

# Compiles file ../mod/AvHBite2.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHBite2.d
gccPlaytest/../mod/AvHBite2.o: ../mod/AvHBite2.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHBite2.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHBite2.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHBite2.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHBite2.d

# Compiles file ../mod/AvHBlink.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHBlink.d
gccPlaytest/../mod/AvHBlink.o: ../mod/AvHBlink.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHBlink.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHBlink.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHBlink.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHBlink.d

# Compiles file ../mod/AvHBuildingGun.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHBuildingGun.d
gccPlaytest/../mod/AvHBuildingGun.o: ../mod/AvHBuildingGun.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHBuildingGun.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHBuildingGun.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHBuildingGun.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHBuildingGun.d

# Compiles file ../mod/AvHClaws.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHClaws.d
gccPlaytest/../mod/AvHClaws.o: ../mod/AvHClaws.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHClaws.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHClaws.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHClaws.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHClaws.d

# Compiles file ../mod/AvHDevour.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHDevour.d
gccPlaytest/../mod/AvHDevour.o: ../mod/AvHDevour.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHDevour.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHDevour.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHDevour.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHDevour.d

# Compiles file ../mod/AvHDivineWind.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHDivineWind.d
gccPlaytest/../mod/AvHDivineWind.o: ../mod/AvHDivineWind.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHDivineWind.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHDivineWind.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHDivineWind.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHDivineWind.d

# Compiles file ../mod/AvHGrenade.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHGrenade.d
gccPlaytest/../mod/AvHGrenade.o: ../mod/AvHGrenade.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHGrenade.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHGrenade.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHGrenade.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHGrenade.d

# Compiles file ../mod/AvHGrenadeGun.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHGrenadeGun.d
gccPlaytest/../mod/AvHGrenadeGun.o: ../mod/AvHGrenadeGun.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHGrenadeGun.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHGrenadeGun.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHGrenadeGun.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHGrenadeGun.d

# Compiles file ../mod/AvHHealingSpray.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHHealingSpray.d
gccPlaytest/../mod/AvHHealingSpray.o: ../mod/AvHHealingSpray.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHHealingSpray.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHHealingSpray.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHHealingSpray.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHHealingSpray.d

# Compiles file ../mod/AvHHeavyMachineGun.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHHeavyMachineGun.d
gccPlaytest/../mod/AvHHeavyMachineGun.o: ../mod/AvHHeavyMachineGun.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHHeavyMachineGun.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHHeavyMachineGun.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHHeavyMachineGun.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHHeavyMachineGun.d

# Compiles file ../mod/AvHItemInfo.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHItemInfo.d
gccPlaytest/../mod/AvHItemInfo.o: ../mod/AvHItemInfo.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHItemInfo.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHItemInfo.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHItemInfo.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHItemInfo.d

# Compiles file ../mod/AvHKnife.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHKnife.d
gccPlaytest/../mod/AvHKnife.o: ../mod/AvHKnife.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHKnife.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHKnife.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHKnife.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHKnife.d

# Compiles file ../mod/AvHMachineGun.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHMachineGun.d
gccPlaytest/../mod/AvHMachineGun.o: ../mod/AvHMachineGun.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHMachineGun.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHMachineGun.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHMachineGun.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHMachineGun.d

# Compiles file ../mod/AvHMetabolize.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHMetabolize.d
gccPlaytest/../mod/AvHMetabolize.o: ../mod/AvHMetabolize.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHMetabolize.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHMetabolize.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHMetabolize.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHMetabolize.d

# Compiles file ../mod/AvHMine.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHMine.d
gccPlaytest/../mod/AvHMine.o: ../mod/AvHMine.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHMine.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHMine.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHMine.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHMine.d

# Compiles file ../mod/AvHParasiteGun.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHParasiteGun.d
gccPlaytest/../mod/AvHParasiteGun.o: ../mod/AvHParasiteGun.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHParasiteGun.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHParasiteGun.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHParasiteGun.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHParasiteGun.d

# Compiles file ../mod/AvHPistol.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHPistol.d
gccPlaytest/../mod/AvHPistol.o: ../mod/AvHPistol.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHPistol.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHPistol.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHPistol.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHPistol.d

# Compiles file ../mod/AvHPrimalScream.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHPrimalScream.d
gccPlaytest/../mod/AvHPrimalScream.o: ../mod/AvHPrimalScream.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHPrimalScream.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHPrimalScream.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHPrimalScream.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHPrimalScream.d

# Compiles file ../mod/AvHSonicGun.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHSonicGun.d
gccPlaytest/../mod/AvHSonicGun.o: ../mod/AvHSonicGun.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHSonicGun.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHSonicGun.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHSonicGun.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHSonicGun.d

# Compiles file ../mod/AvHSpikeGun.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHSpikeGun.d
gccPlaytest/../mod/AvHSpikeGun.o: ../mod/AvHSpikeGun.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHSpikeGun.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHSpikeGun.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHSpikeGun.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHSpikeGun.d

# Compiles file ../mod/AvHSpitGun.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHSpitGun.d
gccPlaytest/../mod/AvHSpitGun.o: ../mod/AvHSpitGun.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHSpitGun.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHSpitGun.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHSpitGun.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHSpitGun.d

# Compiles file ../mod/AvHSpores.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHSpores.d
gccPlaytest/../mod/AvHSpores.o: ../mod/AvHSpores.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHSpores.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHSpores.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHSpores.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHSpores.d

# Compiles file ../mod/AvHStomp.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHStomp.d
gccPlaytest/../mod/AvHStomp.o: ../mod/AvHStomp.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHStomp.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHStomp.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHStomp.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHStomp.d

# Compiles file ../mod/AvHSwipe.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHSwipe.d
gccPlaytest/../mod/AvHSwipe.o: ../mod/AvHSwipe.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHSwipe.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHSwipe.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHSwipe.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHSwipe.d

# Compiles file ../mod/AvHUmbraGun.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHUmbraGun.d
gccPlaytest/../mod/AvHUmbraGun.o: ../mod/AvHUmbraGun.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHUmbraGun.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHUmbraGun.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHUmbraGun.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHUmbraGun.d

# Compiles file ../mod/AvHWebSpinner.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHWebSpinner.d
gccPlaytest/../mod/AvHWebSpinner.o: ../mod/AvHWebSpinner.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHWebSpinner.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHWebSpinner.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHWebSpinner.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHWebSpinner.d

# Compiles file ../mod/AvHWelder.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHWelder.d
gccPlaytest/../mod/AvHWelder.o: ../mod/AvHWelder.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHWelder.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHWelder.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHWelder.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHWelder.d

# Compiles file ggrenade.cpp for the Playtest configuration...
-include gccPlaytest/ggrenade.d
gccPlaytest/ggrenade.o: ggrenade.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ggrenade.cpp $(Playtest_Include_Path) -o gccPlaytest/ggrenade.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ggrenade.cpp $(Playtest_Include_Path) > gccPlaytest/ggrenade.d

# Compiles file ../mod/AvHParticleSystem.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHParticleSystem.d
gccPlaytest/../mod/AvHParticleSystem.o: ../mod/AvHParticleSystem.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHParticleSystem.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHParticleSystem.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHParticleSystem.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHParticleSystem.d

# Compiles file ../mod/AvHParticleSystemEntity.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHParticleSystemEntity.d
gccPlaytest/../mod/AvHParticleSystemEntity.o: ../mod/AvHParticleSystemEntity.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHParticleSystemEntity.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHParticleSystemEntity.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHParticleSystemEntity.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHParticleSystemEntity.d

# Compiles file ../mod/AvHParticleSystemManager.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHParticleSystemManager.d
gccPlaytest/../mod/AvHParticleSystemManager.o: ../mod/AvHParticleSystemManager.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHParticleSystemManager.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHParticleSystemManager.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHParticleSystemManager.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHParticleSystemManager.d

# Compiles file ../mod/AvHParticleTemplate.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHParticleTemplate.d
gccPlaytest/../mod/AvHParticleTemplate.o: ../mod/AvHParticleTemplate.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHParticleTemplate.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHParticleTemplate.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHParticleTemplate.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHParticleTemplate.d

# Compiles file ../mod/AvHParticleTemplateServer.cpp for the Playtest configuration...
-include gccPlaytest/../mod/AvHParticleTemplateServer.d
gccPlaytest/../mod/AvHParticleTemplateServer.o: ../mod/AvHParticleTemplateServer.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../mod/AvHParticleTemplateServer.cpp $(Playtest_Include_Path) -o gccPlaytest/../mod/AvHParticleTemplateServer.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../mod/AvHParticleTemplateServer.cpp $(Playtest_Include_Path) > gccPlaytest/../mod/AvHParticleTemplateServer.d

# Compiles file ../util/Balance.cpp for the Playtest configuration...
-include gccPlaytest/../util/Balance.d
gccPlaytest/../util/Balance.o: ../util/Balance.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../util/Balance.cpp $(Playtest_Include_Path) -o gccPlaytest/../util/Balance.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../util/Balance.cpp $(Playtest_Include_Path) > gccPlaytest/../util/Balance.d

# Compiles file ../util/Checksum.cpp for the Playtest configuration...
-include gccPlaytest/../util/Checksum.d
gccPlaytest/../util/Checksum.o: ../util/Checksum.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../util/Checksum.cpp $(Playtest_Include_Path) -o gccPlaytest/../util/Checksum.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../util/Checksum.cpp $(Playtest_Include_Path) > gccPlaytest/../util/Checksum.d

# Compiles file ../util/GammaTable.cpp for the Playtest configuration...
-include gccPlaytest/../util/GammaTable.d
gccPlaytest/../util/GammaTable.o: ../util/GammaTable.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../util/GammaTable.cpp $(Playtest_Include_Path) -o gccPlaytest/../util/GammaTable.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../util/GammaTable.cpp $(Playtest_Include_Path) > gccPlaytest/../util/GammaTable.d

# Compiles file ../util/LinuxSupport.cpp for the Playtest configuration...
-include gccPlaytest/../util/LinuxSupport.d
gccPlaytest/../util/LinuxSupport.o: ../util/LinuxSupport.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../util/LinuxSupport.cpp $(Playtest_Include_Path) -o gccPlaytest/../util/LinuxSupport.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../util/LinuxSupport.cpp $(Playtest_Include_Path) > gccPlaytest/../util/LinuxSupport.d

# Compiles file ../util/Mat3.cpp for the Playtest configuration...
-include gccPlaytest/../util/Mat3.d
gccPlaytest/../util/Mat3.o: ../util/Mat3.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../util/Mat3.cpp $(Playtest_Include_Path) -o gccPlaytest/../util/Mat3.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../util/Mat3.cpp $(Playtest_Include_Path) > gccPlaytest/../util/Mat3.d

# Compiles file ../util/MathUtil.cpp for the Playtest configuration...
-include gccPlaytest/../util/MathUtil.d
gccPlaytest/../util/MathUtil.o: ../util/MathUtil.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../util/MathUtil.cpp $(Playtest_Include_Path) -o gccPlaytest/../util/MathUtil.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../util/MathUtil.cpp $(Playtest_Include_Path) > gccPlaytest/../util/MathUtil.d

# Compiles file ../util/Quat.cpp for the Playtest configuration...
-include gccPlaytest/../util/Quat.d
gccPlaytest/../util/Quat.o: ../util/Quat.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../util/Quat.cpp $(Playtest_Include_Path) -o gccPlaytest/../util/Quat.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../util/Quat.cpp $(Playtest_Include_Path) > gccPlaytest/../util/Quat.d

# Compiles file ../util/Stacktrace.cpp for the Playtest configuration...
-include gccPlaytest/../util/Stacktrace.d
gccPlaytest/../util/Stacktrace.o: ../util/Stacktrace.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../util/Stacktrace.cpp $(Playtest_Include_Path) -o gccPlaytest/../util/Stacktrace.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../util/Stacktrace.cpp $(Playtest_Include_Path) > gccPlaytest/../util/Stacktrace.d

# Compiles file ../util/STLUtil.cpp for the Playtest configuration...
-include gccPlaytest/../util/STLUtil.d
gccPlaytest/../util/STLUtil.o: ../util/STLUtil.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../util/STLUtil.cpp $(Playtest_Include_Path) -o gccPlaytest/../util/STLUtil.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../util/STLUtil.cpp $(Playtest_Include_Path) > gccPlaytest/../util/STLUtil.d

# Compiles file ../util/Tokenizer.cpp for the Playtest configuration...
-include gccPlaytest/../util/Tokenizer.d
gccPlaytest/../util/Tokenizer.o: ../util/Tokenizer.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../util/Tokenizer.cpp $(Playtest_Include_Path) -o gccPlaytest/../util/Tokenizer.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../util/Tokenizer.cpp $(Playtest_Include_Path) > gccPlaytest/../util/Tokenizer.d

# Compiles file ../util/Zassert.cpp for the Playtest configuration...
-include gccPlaytest/../util/Zassert.d
gccPlaytest/../util/Zassert.o: ../util/Zassert.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../util/Zassert.cpp $(Playtest_Include_Path) -o gccPlaytest/../util/Zassert.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../util/Zassert.cpp $(Playtest_Include_Path) > gccPlaytest/../util/Zassert.d

# Compiles file ../util/ZassertTemplate.cpp for the Playtest configuration...
-include gccPlaytest/../util/ZassertTemplate.d
gccPlaytest/../util/ZassertTemplate.o: ../util/ZassertTemplate.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../util/ZassertTemplate.cpp $(Playtest_Include_Path) -o gccPlaytest/../util/ZassertTemplate.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../util/ZassertTemplate.cpp $(Playtest_Include_Path) > gccPlaytest/../util/ZassertTemplate.d

# Compiles file ../textrep/TRDescription.cpp for the Playtest configuration...
-include gccPlaytest/../textrep/TRDescription.d
gccPlaytest/../textrep/TRDescription.o: ../textrep/TRDescription.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../textrep/TRDescription.cpp $(Playtest_Include_Path) -o gccPlaytest/../textrep/TRDescription.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../textrep/TRDescription.cpp $(Playtest_Include_Path) > gccPlaytest/../textrep/TRDescription.d

# Compiles file ../textrep/TRFactory.cpp for the Playtest configuration...
-include gccPlaytest/../textrep/TRFactory.d
gccPlaytest/../textrep/TRFactory.o: ../textrep/TRFactory.cpp
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -c ../textrep/TRFactory.cpp $(Playtest_Include_Path) -o gccPlaytest/../textrep/TRFactory.o
	$(CPP_COMPILER) $(Playtest_Preprocessor_Definitions) $(Playtest_Compiler_Flags) -MM ../textrep/TRFactory.cpp $(Playtest_Include_Path) > gccPlaytest/../textrep/TRFactory.d

# Creates the intermediate and output folders for each configuration...
.PHONY: create_folders
create_folders:
	mkdir -p V:/temp/ns.dll/gccDeveloper-debug/source
	mkdir -p V:/temp/ns.dll/gccDeveloper-release/source
	mkdir -p gccPlaytest-balancedisabled/source
	mkdir -p ../gccPlaytest-balancedisabled
	mkdir -p gccPlaytest/source
	mkdir -p ../../../../../../../../ProgramFiles(x86)/Steam/SteamApps/common/Half-Life/ns/gccdlls

# Cleans intermediate and output files (objects, libraries, executables)...
.PHONY: clean
clean:
	rm -f V:/temp/ns.dll/gccDeveloper-debug/*.o
	rm -f V:/temp/ns.dll/gccDeveloper-debug/*.d
	rm -f V:/temp/ns.dll/gccDeveloper-debug/*.a
	rm -f V:/temp/ns.dll/gccDeveloper-debug/*.so
	rm -f V:/temp/ns.dll/gccDeveloper-debug/*.dll
	rm -f V:/temp/ns.dll/gccDeveloper-debug/*.exe
	rm -f V:/temp/ns.dll/gccDeveloper-release/*.o
	rm -f V:/temp/ns.dll/gccDeveloper-release/*.d
	rm -f V:/temp/ns.dll/gccDeveloper-release/*.a
	rm -f V:/temp/ns.dll/gccDeveloper-release/*.so
	rm -f V:/temp/ns.dll/gccDeveloper-release/*.dll
	rm -f V:/temp/ns.dll/gccDeveloper-release/*.exe
	rm -f gccPlaytest-balancedisabled/*.o
	rm -f gccPlaytest-balancedisabled/*.d
	rm -f ../gccPlaytest-balancedisabled/*.a
	rm -f ../gccPlaytest-balancedisabled/*.so
	rm -f ../gccPlaytest-balancedisabled/*.dll
	rm -f ../gccPlaytest-balancedisabled/*.exe
	rm -f gccPlaytest/*.o
	rm -f gccPlaytest/*.d
	rm -f ../../../../../../../../ProgramFiles(x86)/Steam/SteamApps/common/Half-Life/ns/gccdlls/*.a
	rm -f ../../../../../../../../ProgramFiles(x86)/Steam/SteamApps/common/Half-Life/ns/gccdlls/*.so
	rm -f ../../../../../../../../ProgramFiles(x86)/Steam/SteamApps/common/Half-Life/ns/gccdlls/*.dll
	rm -f ../../../../../../../../ProgramFiles(x86)/Steam/SteamApps/common/Half-Life/ns/gccdlls/*.exe

