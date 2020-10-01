

If (btnTrace)
	TRACE:C157
End if 


Case of 
	: (Form event code:C388=On After Keystroke:K2:26)
		Form:C1466.data.lastname:=Get edited text:C655
		handleRegisterButton 
End case 