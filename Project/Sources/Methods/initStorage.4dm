//%attributes = {"invisible":true,"executedOnServer":true}



If (Storage:C1525.infos=Null:C1517)
	Use (Storage:C1525)
		Storage:C1525.infos:=New shared object:C1526("studentId"; ds:C1482.Students.all().length)
	End use 
End if 