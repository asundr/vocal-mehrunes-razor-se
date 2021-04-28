Scriptname arunMehrunesRazorMagicEffectScript extends ActiveMagicEffect  

WEAPON Property DA07MehrunesRazor Auto  
Faction Property pDA07MehrunesRazorImmuneFaction  Auto

Sound Property arunVMRLaughSM Auto
Sound Property arunVMRSufferSM Auto  
Sound Property arunVMRToolSM Auto  
Sound Property arunVMRDestructionSM Auto  
Sound Property arunVMRPowerSM Auto  
Sound Property arunVMRCrushSM Auto  
Sound Property arunVMRAmusingSM Auto  
Sound Property arunVMRPleasedSM Auto  
Sound Property arunVMRHavokSM Auto  

Event OnEffectStart(Actor akTarget, Actor akCaster)

	If akTarget.IsInFaction(pDA07MehrunesRazorImmuneFaction) == 1
		Return
	Else
		If (Utility.RandomInt() <= 1)
			If Game.GetPlayer().GetItemCount(DA07MehrunesRazor) >= 1
				akTarget.Kill(Game.GetPlayer())
				If (akTarget.IsEssential()==False)
					MehrunesVocal()
				Endif
			Else
				akTarget.Kill()
			EndIf
		EndIf
	EndIf

EndEvent

function MehrunesVocal()

Int random = Utility.RandomInt(1,40)
	If (random == 1)
		arunVMRSufferSM.Play(Game.GetPlayer())
	ElseIf (random == 2)
		arunVMRToolSM.Play(Game.GetPlayer())
	ElseIf (random == 3)
		arunVMRDestructionSM.Play(Game.GetPlayer())
	ElseIf (random == 4)
		arunVMRPowerSM.Play(Game.GetPlayer())
	ElseIf (random == 5)
		arunVMRCrushSM.Play(Game.GetPlayer())
	ElseIf (random == 6)
		arunVMRAmusingSM.Play(Game.GetPlayer())
	ElseIf (random == 7)
		arunVMRPleasedSM.Play(Game.GetPlayer())
	ElseIf  (random == 8)
		arunVMRHavokSM.Play(Game.GetPlayer())
	Else
		arunVMRLaughSM.Play(Game.GetPlayer())
	Endif

Endfunction
	