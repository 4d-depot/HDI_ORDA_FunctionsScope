Class extends Entity


local Function age() : Variant
	If (This:C1470.birthDate#!00-00-00!)
		$0:=Year of:C25(Current date:C33)-Year of:C25(This:C1470.birthDate)
	Else 
		$0:=Null:C1517
	End if 
	
	
Function ageNotLocal() : Variant
	
	If (This:C1470.birthDate#!00-00-00!)
		$0:=Year of:C25(Current date:C33)-Year of:C25(This:C1470.birthDate)
	Else 
		$0:=Null:C1517
	End if 
	
	