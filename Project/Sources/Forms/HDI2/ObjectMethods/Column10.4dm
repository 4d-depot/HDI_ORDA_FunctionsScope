
C_LONGINT:C283($col; $row)
C_OBJECT:C1216($requestData; $data)

If (btnTrace)
	TRACE:C157
End if 


Case of 
	: (Form event code:C388=On Clicked:K2:4)
		LISTBOX GET CELL POSITION:C971(*; "ListBoxRequestsNotLocal"; $col; $row)
		$requestData:=Form:C1466.requests[$row-1]
		
		If (Num:C11(codeWindow)#0)
			CALL FORM:C1391(codeWindow; "fillFunctionCode"; FORM Get current page:C276; $requestData)
		Else 
			codeWindow:=Open form window:C675("FunctionCode"; Plain form window:K39:10; Horizontally centered:K39:1; Vertically centered:K39:4)
			SET WINDOW TITLE:C213("Request response from the server"; codeWindow)
			$data:=New object:C1471()
			$data.content:=$requestData.response
			DIALOG:C40("FunctionCode"; $data; *)
		End if 
End case 

