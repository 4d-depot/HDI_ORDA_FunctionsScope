//%attributes = {"invisible":true}


If (btnTrace)
	TRACE:C157
End if 

If (__AND(Formula:C1597(Form:C1466.data.firstname#Null:C1517); \
Formula:C1597(Form:C1466.data.firstname#""); \
Formula:C1597(Form:C1466.data.lastname#Null:C1517); \
Formula:C1597(Form:C1466.data.lastname#"")\
))
	OBJECT SET ENABLED:C1123(*; "RegisterButton"; True:C214)
Else 
	OBJECT SET ENABLED:C1123(*; "RegisterButton"; False:C215)
End if 





