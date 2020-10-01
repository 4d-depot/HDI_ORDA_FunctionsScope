

C_LONGINT:C283(codeWindow)
C_OBJECT:C1216($data)

If (btnTrace)
	TRACE:C157
End if 


If (Num:C11(codeWindow)#0)
	CALL FORM:C1391(codeWindow; "fillFunctionCode"; FORM Get current page:C276; Null:C1517)
Else 
	codeWindow:=Open form window:C675("FunctionCode"; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
	SET WINDOW TITLE:C213("Students dataclass class"; codeWindow)
	$data:=New object:C1471()
	$data.content:=_TabLineCode{4}
	DIALOG:C40("FunctionCode"; $data; *)
End if 
