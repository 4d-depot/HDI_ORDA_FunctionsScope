

var $connect; $remoteDS : Object
var $result : Integer


If (btnTrace)
	TRACE:C157
End if 


$connect:=New object:C1471("hostname"; "127.0.0.1:8044")
$remoteDS:=Open datastore:C1452($connect; "HDI")

ON ERR CALL:C155("errorMethod")
$result:=$remoteDS.Students.computeStudentId()
ON ERR CALL:C155("")

OBJECT SET VISIBLE:C603(*; "CreationOK"; False:C215)
OBJECT SET TITLE:C194(*; "ExposedResult"; "Response")

Form:C1466.response:=lastErrorMessage

manageTexts