
# docs
Documentation of the gamesense lua api

# Table of contents

* [Overview](README.md)

## Using the cheat

* [Using lua scripts](usage/using_lua_scripts.md)
* [Unlisted features](usage/unlisted_features.md)
* [Common issues](usage/common_issues.md)

## Developers

* [Writing lua scripts](development/README.md)
  * [Getting started](development/getting_started.md)
  * [Examples](development/examples/README.md)
    * [Simple watermark](development/examples/watermark.md)
    * [Head Dot ESP](development/examples/head_dot.md)
    * [Talk shit](development/examples/talk_shit.md)
    * [Auto buy on round start](development/examples/auto_buy.md)
    * [Create Interface](development/examples/create_interface.md)
  * [Editors](development/editors/README.md)
    * [VS Code](development/editors/vscode.md)
    * [Sublime Text](development/editors/sublime.md)
    * [Atom](development/editors/atom.md)
  * [Events](development/events.md)
  * [Snippets](development/snippets/README.md)
  * [Compiling lua scripts](development/compiling.md)
* [API Documentation]
  * [bit](globals/bit.md)
  * [client](globals/client.md)
  * [config](globals/config.md)
  * [cvar](globals/cvar.md)
  * [database](globals/database.md)
  * [entity](globals/entity.md)
  * [globals](globals/globals.md)
  * [json](globals/json.md)
  * [materialsystem](globals/materialsystem.md)
  * [panorama](globals/panorama.md)
  * [plist](globals/plist.md)
  * [renderer](globals/renderer.md)
  * [ui](globals/ui.md)
  * [vector](globals/vector.md)
* [Netprops]
  * [Important](netprops/important.md)
    * [CCSGameRulesProxy](netprops/CCSGameRulesProxy.md)
    * [CCSPlayer](netprops/CCSPlayer.md)
    * [CCSPlayerResource](netprops/CCSPlayerResource.md)
  * [Items](netprops/items.md)
    * [CAK47](netprops/CAK47.md)
    * [CBaseCSGrenade](netprops/CBaseCSGrenade.md)
    * [CBaseGrenade](netprops/CBaseGrenade.md)
    * [CBreachCharge](netprops/CBreachCharge.md)
    * [CBumpMine](netprops/CBumpMine.md)
    * [CC4](netprops/CC4.md)
    * [CDEagle](netprops/CDEagle.md)
    * [CDecoyGrenade](netprops/CDecoyGrenade.md)
    * [CEconEntity](netprops/CEconEntity.md)
    * [CFists](netprops/CFists.md)
    * [CFlashbang](netprops/CFlashbang.md)
    * [CHEGrenade](netprops/CHEGrenade.md)
    * [CIncendiaryGrenade](netprops/CIncendiaryGrenade.md)
    * [CItem_Healthshot](netprops/CItem_Healthshot.md)
    * [CItemCash](netprops/CItemCash.md)
    * [CItemDogtags](netprops/CItemDogtags.md)
    * [CKnife](netprops/CKnife.md)
    * [CKnifeGG](netprops/CKnifeGG.md)
    * [CMelee](netprops/CMelee.md)
    * [CMolotovGrenade](netprops/CMolotovGrenade.md)
    * [CSCAR17](netprops/CSCAR17.md)
    * [CSensorGrenade](netprops/CSensorGrenade.md)
    * [CSmokeGrenade](netprops/CSmokeGrenade.md)
    * [CSnowball](netprops/CSnowball.md)
    * [CTablet](netprops/CTablet.md)
    * [CWeaponAug](netprops/CWeaponAug.md)
    * [CWeaponAWP](netprops/CWeaponAWP.md)
    * [CWeaponBaseItem](netprops/CWeaponBaseItem.md)
    * [CWeaponBizon](netprops/CWeaponBizon.md)
    * [CWeaponCSBase](netprops/CWeaponCSBase.md)
    * [CWeaponCSBaseGun](netprops/CWeaponCSBaseGun.md)
    * [CWeaponCycler](netprops/CWeaponCycler.md)
    * [CWeaponElite](netprops/CWeaponElite.md)
    * [CWeaponFamas](netprops/CWeaponFamas.md)
    * [CWeaponFiveSeven](netprops/CWeaponFiveSeven.md)
    * [CWeaponG3SG1](netprops/CWeaponG3SG1.md)
    * [CWeaponGalil](netprops/CWeaponGalil.md)
    * [CWeaponGalilAR](netprops/CWeaponGalilAR.md)
    * [CWeaponGlock](netprops/CWeaponGlock.md)
    * [CWeaponHKP2000](netprops/CWeaponHKP2000.md)
    * [CWeaponM249](netprops/CWeaponM249.md)
    * [CWeaponM3](netprops/CWeaponM3.md)
    * [CWeaponM4A1](netprops/CWeaponM4A1.md)
    * [CWeaponMAC10](netprops/CWeaponMAC10.md)
    * [CWeaponMag7](netprops/CWeaponMag7.md)
    * [CWeaponMP5Navy](netprops/CWeaponMP5Navy.md)
    * [CWeaponMP7](netprops/CWeaponMP7.md)
    * [CWeaponMP9](netprops/CWeaponMP9.md)
    * [CWeaponNegev](netprops/CWeaponNegev.md)
    * [CWeaponNOVA](netprops/CWeaponNOVA.md)
    * [CWeaponP228](netprops/CWeaponP228.md)
    * [CWeaponP250](netprops/CWeaponP250.md)
    * [CWeaponP90](netprops/CWeaponP90.md)
    * [CWeaponSawedoff](netprops/CWeaponSawedoff.md)
    * [CWeaponSCAR20](netprops/CWeaponSCAR20.md)
    * [CWeaponScout](netprops/CWeaponScout.md)
    * [CWeaponSG550](netprops/CWeaponSG550.md)
    * [CWeaponSG552](netprops/CWeaponSG552.md)
    * [CWeaponSG556](netprops/CWeaponSG556.md)
    * [CWeaponShield](netprops/CWeaponShield.md)
    * [CWeaponSSG08](netprops/CWeaponSSG08.md)
    * [CWeaponTaser](netprops/CWeaponTaser.md)
    * [CWeaponTec9](netprops/CWeaponTec9.md)
    * [CWeaponTMP](netprops/CWeaponTMP.md)
    * [CWeaponUMP45](netprops/CWeaponUMP45.md)
    * [CWeaponUSP](netprops/CWeaponUSP.md)
    * [CWeaponXM1014](netprops/CWeaponXM1014.md)
    * [CWeaponZoneRepulsor](netprops/CWeaponZoneRepulsor.md)
    * [ParticleSmokeGrenade](netprops/ParticleSmokeGrenade.md)
  * [Projectiles](netprops/projectiles.md)
    * [CBaseCSGrenadeProjectile](netprops/CBaseCSGrenadeProjectile.md)
    * [CBreachChargeProjectile](netprops/CBreachChargeProjectile.md)
    * [CBumpMineProjectile](netprops/CBumpMineProjectile.md)
    * [CDecoyProjectile](netprops/CDecoyProjectile.md)
    * [CMolotovProjectile](netprops/CMolotovProjectile.md)
    * [CSensorGrenadeProjectile](netprops/CSensorGrenadeProjectile.md)
    * [CSmokeGrenadeProjectile](netprops/CSmokeGrenadeProjectile.md)
    * [CSnowballProjectile](netprops/CSnowballProjectile.md)
  * [Environment](netprops/environment.md)
    * [CColorCorrection](netprops/CColorCorrection.md)
    * [CColorCorrectionVolume](netprops/CColorCorrectionVolume.md)
    * [CEnvAmbientLight](netprops/CEnvAmbientLight.md)
    * [CEnvDetailController](netprops/CEnvDetailController.md)
    * [CEnvDOFController](netprops/CEnvDOFController.md)
    * [CEnvGasCanister](netprops/CEnvGasCanister.md)
    * [CEnvParticleScript](netprops/CEnvParticleScript.md)
    * [CEnvProjectedTexture](netprops/CEnvProjectedTexture.md)
    * [CEnvQuadraticBeam](netprops/CEnvQuadraticBeam.md)
    * [CEnvScreenEffect](netprops/CEnvScreenEffect.md)
    * [CEnvScreenOverlay](netprops/CEnvScreenOverlay.md)
    * [CEnvTonemapController](netprops/CEnvTonemapController.md)
    * [CEnvWind](netprops/CEnvWind.md)
    * [CSun](netprops/CSun.md)
    * [CSunlightShadowControl](netprops/CSunlightShadowControl.md)
  * [Controllers](netprops/controllers.md)
    * [CDangerZoneController](netprops/CDangerZoneController.md)
    * [CFogController](netprops/CFogController.md)
    * [CFootstepControl](netprops/CFootstepControl.md)
    * [CMapVetoPickController](netprops/CMapVetoPickController.md)
    * [CMaterialModifyControl](netprops/CMaterialModifyControl.md)
    * [CPoseController](netprops/CPoseController.md)
    * [CPostProcessController](netprops/CPostProcessController.md)
    * [CShadowControl](netprops/CShadowControl.md)
    * [CTeam](netprops/CTeam.md)
    * [CTeamplayRoundBasedRulesProxy](netprops/CTeamplayRoundBasedRulesProxy.md)
    * [CVoteController](netprops/CVoteController.md)
    * [CWaterLODControl](netprops/CWaterLODControl.md)
  * [Temp Entities](netprops/tempentities.md)
    * [CTEArmorRicochet](netprops/CTEArmorRicochet.md)
    * [CTEBaseBeam](netprops/CTEBaseBeam.md)
    * [CTEBeamEntPoint](netprops/CTEBeamEntPoint.md)
    * [CTEBeamEnts](netprops/CTEBeamEnts.md)
    * [CTEBeamFollow](netprops/CTEBeamFollow.md)
    * [CTEBeamLaser](netprops/CTEBeamLaser.md)
    * [CTEBeamPoints](netprops/CTEBeamPoints.md)
    * [CTEBeamRing](netprops/CTEBeamRing.md)
    * [CTEBeamRingPoint](netprops/CTEBeamRingPoint.md)
    * [CTEBeamSpline](netprops/CTEBeamSpline.md)
    * [CTEBloodSprite](netprops/CTEBloodSprite.md)
    * [CTEBloodStream](netprops/CTEBloodStream.md)
    * [CTEBreakModel](netprops/CTEBreakModel.md)
    * [CTEBSPDecal](netprops/CTEBSPDecal.md)
    * [CTEBubbles](netprops/CTEBubbles.md)
    * [CTEBubbleTrail](netprops/CTEBubbleTrail.md)
    * [CTEClientProjectile](netprops/CTEClientProjectile.md)
    * [CTEDecal](netprops/CTEDecal.md)
    * [CTEDust](netprops/CTEDust.md)
    * [CTEDynamicLight](netprops/CTEDynamicLight.md)
    * [CTEEffectDispatch](netprops/CTEEffectDispatch.md)
    * [CTEEnergySplash](netprops/CTEEnergySplash.md)
    * [CTEExplosion](netprops/CTEExplosion.md)
    * [CTEFireBullets](netprops/CTEFireBullets.md)
    * [CTEFizz](netprops/CTEFizz.md)
    * [CTEFootprintDecal](netprops/CTEFootprintDecal.md)
    * [CTEFoundryHelpers](netprops/CTEFoundryHelpers.md)
    * [CTEGaussExplosion](netprops/CTEGaussExplosion.md)
    * [CTEGlowSprite](netprops/CTEGlowSprite.md)
    * [CTEImpact](netprops/CTEImpact.md)
    * [CTEKillPlayerAttachments](netprops/CTEKillPlayerAttachments.md)
    * [CTELargeFunnel](netprops/CTELargeFunnel.md)
    * [CTEMetalSparks](netprops/CTEMetalSparks.md)
    * [CTEMuzzleFlash](netprops/CTEMuzzleFlash.md)
    * [CTEParticleSystem](netprops/CTEParticleSystem.md)
    * [CTEPhysicsProp](netprops/CTEPhysicsProp.md)
    * [CTEPlantBomb](netprops/CTEPlantBomb.md)
    * [CTEPlayerAnimEvent](netprops/CTEPlayerAnimEvent.md)
    * [CTEPlayerDecal](netprops/CTEPlayerDecal.md)
    * [CTEProjectedDecal](netprops/CTEProjectedDecal.md)
    * [CTERadioIcon](netprops/CTERadioIcon.md)
    * [CTEShatterSurface](netprops/CTEShatterSurface.md)
    * [CTEShowLine](netprops/CTEShowLine.md)
    * [CTESmoke](netprops/CTESmoke.md)
    * [CTESparks](netprops/CTESparks.md)
    * [CTESprite](netprops/CTESprite.md)
    * [CTESpriteSpray](netprops/CTESpriteSpray.md)
    * [CTEWorldDecal](netprops/CTEWorldDecal.md)
  * [Base Entities](netprops/baseentities.md)
    * [CBaseAnimating](netprops/CBaseAnimating.md)
    * [CBaseAnimatingOverlay](netprops/CBaseAnimatingOverlay.md)
    * [CBaseAttributableItem](netprops/CBaseAttributableItem.md)
    * [CBaseButton](netprops/CBaseButton.md)
    * [CBaseCombatCharacter](netprops/CBaseCombatCharacter.md)
    * [CBaseCombatWeapon](netprops/CBaseCombatWeapon.md)
    * [CBaseDoor](netprops/CBaseDoor.md)
    * [CBaseEntity](netprops/CBaseEntity.md)
    * [CBaseFlex](netprops/CBaseFlex.md)
    * [CBaseParticleEntity](netprops/CBaseParticleEntity.md)
    * [CBasePlayer](netprops/CBasePlayer.md)
    * [CBasePropDoor](netprops/CBasePropDoor.md)
    * [CBaseTeamObjectiveResource](netprops/CBaseTeamObjectiveResource.md)
    * [CBaseTempEntity](netprops/CBaseTempEntity.md)
    * [CBaseToggle](netprops/CBaseToggle.md)
    * [CBaseTrigger](netprops/CBaseTrigger.md)
    * [CBaseViewModel](netprops/CBaseViewModel.md)
    * [CBaseVPhysicsTrigger](netprops/CBaseVPhysicsTrigger.md)
    * [CBaseWeaponWorldModel](netprops/CBaseWeaponWorldModel.md)
  * [Other](netprops/other.md)
    * [CAI_BaseNPC](netprops/CAI_BaseNPC.md)
    * [CBeam](netprops/CBeam.md)
    * [CBeamSpotlight](netprops/CBeamSpotlight.md)
    * [CBoneFollower](netprops/CBoneFollower.md)
    * [CBRC4Target](netprops/CBRC4Target.md)
    * [CBreakableProp](netprops/CBreakableProp.md)
    * [CBreakableSurface](netprops/CBreakableSurface.md)
    * [CCascadeLight](netprops/CCascadeLight.md)
    * [CChicken](netprops/CChicken.md)
    * [CCSRagdoll](netprops/CCSRagdoll.md)
    * [CCSTeam](netprops/CCSTeam.md)
    * [CDangerZone](netprops/CDangerZone.md)
    * [CDrone](netprops/CDrone.md)
    * [CDronegun](netprops/CDronegun.md)
    * [CDynamicLight](netprops/CDynamicLight.md)
    * [CDynamicProp](netprops/CDynamicProp.md)
    * [CEconWearable](netprops/CEconWearable.md)
    * [CEmbers](netprops/CEmbers.md)
    * [CEntityDissolve](netprops/CEntityDissolve.md)
    * [CEntityFlame](netprops/CEntityFlame.md)
    * [CEntityFreezing](netprops/CEntityFreezing.md)
    * [CEntityParticleTrail](netprops/CEntityParticleTrail.md)
    * [CFEPlayerDecal](netprops/CFEPlayerDecal.md)
    * [CFireCrackerBlast](netprops/CFireCrackerBlast.md)
    * [CFireSmoke](netprops/CFireSmoke.md)
    * [CFireTrail](netprops/CFireTrail.md)
    * [CFish](netprops/CFish.md)
    * [CFunc_Dust](netprops/CFunc_Dust.md)
    * [CFunc_LOD](netprops/CFunc_LOD.md)
    * [CFuncAreaPortalWindow](netprops/CFuncAreaPortalWindow.md)
    * [CFuncBrush](netprops/CFuncBrush.md)
    * [CFuncConveyor](netprops/CFuncConveyor.md)
    * [CFuncLadder](netprops/CFuncLadder.md)
    * [CFuncMonitor](netprops/CFuncMonitor.md)
    * [CFuncMoveLinear](netprops/CFuncMoveLinear.md)
    * [CFuncOccluder](netprops/CFuncOccluder.md)
    * [CFuncReflectiveGlass](netprops/CFuncReflectiveGlass.md)
    * [CFuncRotating](netprops/CFuncRotating.md)
    * [CFuncSmokeVolume](netprops/CFuncSmokeVolume.md)
    * [CFuncTrackTrain](netprops/CFuncTrackTrain.md)
    * [CGameRulesProxy](netprops/CGameRulesProxy.md)
    * [CGrassBurn](netprops/CGrassBurn.md)
    * [CHandleTest](netprops/CHandleTest.md)
    * [CHostage](netprops/CHostage.md)
    * [CHostageCarriableProp](netprops/CHostageCarriableProp.md)
    * [CInferno](netprops/CInferno.md)
    * [CInfoLadderDismount](netprops/CInfoLadderDismount.md)
    * [CInfoMapRegion](netprops/CInfoMapRegion.md)
    * [CInfoOverlayAccessor](netprops/CInfoOverlayAccessor.md)
    * [CLightGlow](netprops/CLightGlow.md)
    * [CMovieDisplay](netprops/CMovieDisplay.md)
    * [CParadropChopper](netprops/CParadropChopper.md)
    * [CParticleFire](netprops/CParticleFire.md)
    * [CParticlePerformanceMonitor](netprops/CParticlePerformanceMonitor.md)
    * [CParticleSystem](netprops/CParticleSystem.md)
    * [CPhysBox](netprops/CPhysBox.md)
    * [CPhysBoxMultiplayer](netprops/CPhysBoxMultiplayer.md)
    * [CPhysicsProp](netprops/CPhysicsProp.md)
    * [CPhysicsPropMultiplayer](netprops/CPhysicsPropMultiplayer.md)
    * [CPhysMagnet](netprops/CPhysMagnet.md)
    * [CPhysPropAmmoBox](netprops/CPhysPropAmmoBox.md)
    * [CPhysPropLootCrate](netprops/CPhysPropLootCrate.md)
    * [CPhysPropRadarJammer](netprops/CPhysPropRadarJammer.md)
    * [CPhysPropWeaponUpgrade](netprops/CPhysPropWeaponUpgrade.md)
    * [CPlantedC4](netprops/CPlantedC4.md)
    * [CPlasma](netprops/CPlasma.md)
    * [CPlayerPing](netprops/CPlayerPing.md)
    * [CPlayerResource](netprops/CPlayerResource.md)
    * [CPointCamera](netprops/CPointCamera.md)
    * [CPointCommentaryNode](netprops/CPointCommentaryNode.md)
    * [CPointWorldText](netprops/CPointWorldText.md)
    * [CPrecipitation](netprops/CPrecipitation.md)
    * [CPrecipitationBlocker](netprops/CPrecipitationBlocker.md)
    * [CPredictedViewModel](netprops/CPredictedViewModel.md)
    * [CProp_Hallucination](netprops/CProp_Hallucination.md)
    * [CPropCounter](netprops/CPropCounter.md)
    * [CPropDoorRotating](netprops/CPropDoorRotating.md)
    * [CPropJeep](netprops/CPropJeep.md)
    * [CPropVehicleDriveable](netprops/CPropVehicleDriveable.md)
    * [CRagdollManager](netprops/CRagdollManager.md)
    * [CRagdollProp](netprops/CRagdollProp.md)
    * [CRagdollPropAttached](netprops/CRagdollPropAttached.md)
    * [CRopeKeyframe](netprops/CRopeKeyframe.md)
    * [CSceneEntity](netprops/CSceneEntity.md)
    * [CSlideshowDisplay](netprops/CSlideshowDisplay.md)
    * [CSmokeStack](netprops/CSmokeStack.md)
    * [CSnowballPile](netprops/CSnowballPile.md)
    * [CSpatialEntity](netprops/CSpatialEntity.md)
    * [CSpotlightEnd](netprops/CSpotlightEnd.md)
    * [CSprite](netprops/CSprite.md)
    * [CSpriteOriented](netprops/CSpriteOriented.md)
    * [CSpriteTrail](netprops/CSpriteTrail.md)
    * [CStatueProp](netprops/CStatueProp.md)
    * [CSteamJet](netprops/CSteamJet.md)
    * [CSurvivalSpawnChopper](netprops/CSurvivalSpawnChopper.md)
    * [CTesla](netprops/CTesla.md)
    * [CTest_ProxyToggle_Networkable](netprops/CTest_ProxyToggle_Networkable.md)
    * [CTestTraceline](netprops/CTestTraceline.md)
    * [CTriggerPlayerMovement](netprops/CTriggerPlayerMovement.md)
    * [CTriggerSoundOperator](netprops/CTriggerSoundOperator.md)
    * [CVGuiScreen](netprops/CVGuiScreen.md)
    * [CWaterBullet](netprops/CWaterBullet.md)
    * [CWorld](netprops/CWorld.md)
    * [CWorldVguiText](netprops/CWorldVguiText.md)
    * [DustTrail](netprops/DustTrail.md)
    * [MovieExplosion](netprops/MovieExplosion.md)
    * [RocketTrail](netprops/RocketTrail.md)
    * [SmokeTrail](netprops/SmokeTrail.md)
    * [SporeExplosion](netprops/SporeExplosion.md)
    * [SporeTrail](netprops/SporeTrail.md)
    
    ---
description: List of events that you can listen to using client.set_event_callback
---
# Events

### List of events:

#### paint

Fired every time the game renders a frame while being connected to a server. Can be used to draw to the screen using the [renderer.*](/docs/developers/globals/renderer) functions


**Examples:**

{% code-tabs %}
{% code-tabs-item %}
```lua
client.set_event_callback("paint", function()
	renderer.text(15, 15, 255, 255, 255, 255, nil, 0, "hello world")
end)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

#### paint_ui

Fired every time the game renders a frame, even if you're in the menu. Can be used to draw to the screen using the [renderer.*](/docs/developers/globals/renderer) functions



#### run_command

Fired every time the game runs a command (usually 64 times a second, equal to tickrate) while you're alive. This is the best event for processing data that only changes when the game receives an update from the server, like information about other players.

Key | Description
--- | -----------
 **chokedcommands** | Amount of commands that the client has choked
 **command_number** | Current command number



#### setup_command

Fired every time the game prepares a move command that's sent to the server. This is ran before cheat features like antiaim and can be used to modify user input (view angles, pressed keys, movement) how it's seen by the cheat. For example, setting `in_use = 1` will disable antiaim the same way pressing use key ingame does. This is the preferred method of setting user input and should be used instead of `client.exec` whenever possible

Key | Description
--- | -----------
 **chokedcommands** | Amount of commands that the client has choked
 **command_number** | Current command number
 **pitch** | Pitch view angle
 **yaw** | Yaw view angle
 **forwardmove** | Forward / backward speed (-450 to 450)
 **sidemove** | Left / right speed (-450 to 450)
 **move_yaw** | Yaw angle that's used for movement. If not set, view yaw is used
 **allow_send_packet** | Set to false to make the cheat choke the current command (when possible)
 **in_attack** | IN_ATTACK Button
 **in_jump** | IN_JUMP Button
 **in_duck** | IN_DUCK Button
 **in_forward** | IN_FORWARD Button
 **in_back** | IN_BACK Button
 **in_use** | IN_USE Button
 **in_cancel** | IN_CANCEL Button
 **in_left** | IN_LEFT Button
 **in_right** | IN_RIGHT Button
 **in_moveleft** | IN_MOVELEFT Button
 **in_moveright** | IN_MOVERIGHT Button
 **in_attack2** | IN_ATTACK2 Button
 **in_run** | IN_RUN Button
 **in_reload** | IN_RELOAD Button
 **in_alt1** | IN_ALT1 Button
 **in_alt2** | IN_ALT2 Button
 **in_score** | IN_SCORE Button
 **in_speed** | IN_SPEED Button
 **in_walk** | IN_WALK Button
 **in_zoom** | IN_ZOOM Button
 **in_weapon1** | IN_WEAPON1 Button
 **in_weapon2** | IN_WEAPON2 Button
 **in_bullrush** | IN_BULLRUSH Button
 **in_grenade1** | IN_GRENADE1 Button
 **in_grenade2** | IN_GRENADE2 Button
 **in_attack3** | IN_ATTACK3 Button
 **weaponselect** | 
 **weaponsubtype** | 



#### override_view

Lets you override the camera position and angles

Key | Description
--- | -----------
 **x** | Camera X position
 **y** | Camera Y position
 **z** | Camera Z position
 **pitch** | Pitch view angle
 **yaw** | Yaw view angle
 **fov** | Field of view



#### console_input

Fired every time the user types something in the game console and presses enter. Return true from the event handler to make the game not process the input

|| Property
------ | --------
 1 | console input text


**Examples:**

{% code-tabs %}
{% code-tabs-item %}
```lua
client.set_event_callback("console_input", function(text)
	client.log("entered: '", text, "'")
end)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

#### output

This event lets you override the text drawn in the top left. There can only be one callback for this event. This event callback is invoked from print, client.log, client.color_log, "Missed due to spread" message, etc.

Key | Description
--- | -----------
 **text** | Drawn text
 **r** | Drawn color: Red 0-255
 **g** | Drawn color: Green 0-255
 **b** | Drawn color: Blue 0-255
 **a** | Alpha 0-255



#### indicator

This event lets you lets you override how indicators are drawn. There can only be one callback for this event. This event callback is invoked from renderer.indicator and indicators like "DT".

Key | Description
--- | -----------
 **text** | Drawn text
 **r** | Drawn color: Red 0-255
 **g** | Drawn color: Green 0-255
 **b** | Drawn color: Blue 0-255
 **a** | Alpha 0-255



#### player_chat

Fired when a player sends a message to chat

Key | Description
--- | -----------
 **teamonly** | true if the message was sent to team chat
 **entity** | Entity index of the player sending the message
 **name** | Name of the player sending the message
 **text** | Chat message text



#### string_cmd

Fired before a string command (chat messages, weapon inspecting, buy commands) is sent to the server.

|| Property
------ | --------
 1 | string command



#### net_update_start

Fired before the game processes entity updates from the server. (`FrameStageNotify FRAME_NET_UPDATE_START`) Be careful when using this event to modify entity data, some things have to be restored manually as not even a full update will update them



#### net_update_end

Fired after an entity update packet is received from the server. (`FrameStageNotify FRAME_NET_UPDATE_END`)



#### predict_command

Fired when the game prediction is ran

Key | Description
--- | -----------
 **command_number** | Command number of the predicted command



#### pre_render

Fired before a frame is rendered



#### post_render

Fired after a frame is rendered



#### aim_fire

Fired when the rage aimbot shoots at a player

Key | Description
--- | -----------
 **id** | Shot ID, this can be used to find the corresponding aim_hit / aim_miss event
 **target** | Target player entindex
 **hit_chance** | Chance the shot will hit, depends on spread
 **hitgroup** | Targeted hit group, this is not the same thing as a hitbox
 **damage** | Predicted damage the shot will do
 **backtrack** | Amount of ticks the player was backtracked
 **boosted** | True if accuracy boost was used to increase the accuracy of the shot
 **high_priority** | True if the shot was at a high priority record, like on shot backtrack
 **interpolated** | Player was interpolated
 **extrapolated** | Player was extrapolated
 **teleported** | Target player was teleporting (breaking lag compensation)
 **tick** | Tick the shot was fired at. This can be used to draw the hitboxes using client.draw_hitboxes
 **x** | X world coordinate of the aim point
 **y** | X world coordinate of the aim point
 **z** | Z world coordinate of the aim point


**Examples:**

{% code-tabs %}
{% code-tabs-item %}
```lua
local function time_to_ticks(t)
	return floor(0.5 + (t / globals.tickinterval()))
end

local hitgroup_names = {'generic', 'head', 'chest', 'stomach', 'left arm', 'right arm', 'left leg', 'right leg', 'neck', '?', 'gear'}

local function aim_fire(e)
	local flags = {
		e.teleported and 'T' or '',
		e.interpolated and 'I' or '',
		e.extrapolated and 'E' or '',
		e.boosted and 'B' or '',
		e.high_priority and 'H' or ''
	}
	local group = hitgroup_names[e.hitgroup + 1] or '?'
	print(string.format('Fired at %s (%s) for %d dmg (chance=%d%%, bt=%2d, flags=%s)', entity.get_player_name(e.target), group, e.damage, math.floor(e.hit_chance + 0.5), time_to_ticks(e.backtrack), table.concat(flags)))
end
client.set_event_callback('aim_fire', aim_fire)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

#### aim_hit

Fired when the rage aimbot hit a shot at a player

Key | Description
--- | -----------
 **id** | Shot ID, the corresponding aim_fire event has the same ID
 **target** | Target player entindex
 **hit_chance** | Actual hit chance the shot had
 **hitgroup** | Hit group that was hit. This is not the same thing as a hitbox
 **damage** | Actual damage the shot did


**Examples:**

{% code-tabs %}
{% code-tabs-item %}
```lua
local hitgroup_names = {'generic', 'head', 'chest', 'stomach', 'left arm', 'right arm', 'left leg', 'right leg', 'neck', '?', 'gear'}

local function aim_hit(e)
	local group = hitgroup_names[e.hitgroup + 1] or '?'
	print(string.format('Hit %s in the %s for %d damage (%d health remaining)', entity.get_player_name(e.target), group, e.damage, entity.get_prop(e.target, 'm_iHealth')))
end
client.set_event_callback('aim_hit', aim_hit)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

#### aim_miss

Fired when the rage aimbot missed a shot at a player

Key | Description
--- | -----------
 **id** | Shot ID, the corresponding aim_fire event has the same ID
 **target** | Target player entindex
 **hit_chance** | Actual hit chance the shot had
 **hitgroup** | Hit group that was missed. This is not the same thing as a hitbox
 **reason** | Reason the shot was missed. This can be 'spread', 'prediction error', 'death' or '?' (unknown / resolver)


**Examples:**

{% code-tabs %}
{% code-tabs-item %}
```lua
local hitgroup_names = {'generic', 'head', 'chest', 'stomach', 'left arm', 'right arm', 'left leg', 'right leg', 'neck', '?', 'gear'}

local function aim_miss(e)
	local group = hitgroup_names[e.hitgroup + 1] or '?'
	print(string.format('Missed %s (%s) due to %s', entity.get_player_name(e.target), group, e.reason))
end
client.set_event_callback('aim_miss', aim_miss)
```
{% endcode-tabs-item %}
{% endcode-tabs %}

#### pre_config_load

Fired before a config will be loaded



#### post_config_load

Fired after a config has been loaded



#### pre_config_save

Fired before a config will be saved



#### post_config_save

Fired after a config has been saved

