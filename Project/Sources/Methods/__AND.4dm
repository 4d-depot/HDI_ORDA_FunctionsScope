//%attributes = {"invisible":true}

C_LONGINT:C283($i)
C_BOOLEAN:C305($0)

$0:=True:C214
For ($i;1;Count parameters:C259;1)
	$0:=${$i}.call()
	If (Not:C34($0))
		$i:=Count parameters:C259+1  // Stop if the condition fails
	End if 
End for 