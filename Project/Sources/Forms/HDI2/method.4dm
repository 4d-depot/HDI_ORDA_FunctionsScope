
C_BOOLEAN:C305(btnTrace)


var $connect : Object

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		btnTrace:=False:C215
		
		ARRAY TEXT:C222(_TabTitles; 0)
		ARRAY TEXT:C222(_Descriptions; 0)
		ARRAY TEXT:C222(_TabLineCode; 0)
		
		
		READ ONLY:C145([INFO:1])
		QUERY:C277([INFO:1]; [INFO:1]PageNumber:4<=9)
		ORDER BY:C49([INFO:1]; [INFO:1]PageNumber:4; >)
		SELECTION TO ARRAY:C260([INFO:1]TabTitle:3; _TabTitles; [INFO:1]Description:2; _Descriptions)
		
		QUERY:C277([INFO:1]; [INFO:1]PageNumber:4>=10)
		ORDER BY:C49([INFO:1]; [INFO:1]PageNumber:4; >)
		SELECTION TO ARRAY:C260([INFO:1]Description:2; _TabLineCode)
		
		Form:C1466.ds:=ds:C1482
		
		$connect:=New object:C1471("hostname"; "127.0.0.1:8044")
		Form:C1466.remoteDS:=Open datastore:C1452($connect; "HDI")
		
		initStorage
		
		manageTexts
		
		RW
		
		viewTrace
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		//Page 2
		Form:C1466.ds.startRequestLog(1000)
		
		If (FORM Get current page:C276=4)
			Form:C1466.students:=Form:C1466.remoteDS.Students.all()
		Else 
			Form:C1466.students:=ds:C1482.Students.all()
		End if 
		
		Form:C1466.requests:=Null:C1517
		OBJECT SET VISIBLE:C603(*; "StartCS@"; False:C215)
		
		//Page 4
		OBJECT SET ENABLED:C1123(*; "RegisterButton"; False:C215)
		OBJECT SET VISIBLE:C603(*; "CreationOK"; False:C215)
		Form:C1466.data:=New object:C1471()
		Form:C1466.data.firstname:=""
		Form:C1466.data.lastname:=""
		
		Form:C1466.response:=Null:C1517
		OBJECT SET TITLE:C194(*; "ExposedResult"; "")
		
		If (Num:C11(codeWindow)#0)
			CALL FORM:C1391(codeWindow; "fillFunctionCode"; FORM Get current page:C276; Null:C1517)
		End if 
		
		manageTexts
		
		viewTrace
End case 