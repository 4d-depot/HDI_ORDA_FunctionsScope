//%attributes = {"invisible":true}


C_LONGINT:C283($page; $1)
C_OBJECT:C1216($data; $2)

$page:=$1
$data:=$2

Case of 
	: (($page=2) & ($data=Null:C1517))
		Form:C1466.content:=""
		SET WINDOW TITLE:C213("Request response from the server"; codeWindow)
		
	: (($page=2) & ($data#Null:C1517))
		Form:C1466.content:=$data.response
		SET WINDOW TITLE:C213("Request response from the server"; codeWindow)
		
	: (($page=3) & ($data=Null:C1517))
		Form:C1466.content:=""
		SET WINDOW TITLE:C213("Request response from the server"; codeWindow)
		
	: (($page=3) & ($data#Null:C1517))
		Form:C1466.content:=$data.response
		SET WINDOW TITLE:C213("Request response from the server"; codeWindow)
		
	: ($page=4)
		Form:C1466.content:=_TabLineCode{4}
		SET WINDOW TITLE:C213("Students dataclass class"; codeWindow)
		
	Else 
		Form:C1466.content:=""
End case 