

var $connect; $remoteDS; $result; $selection : Object
var $row : Integer

If (btnTrace)
	TRACE:C157
End if 


$connect:=New object:C1471("hostname"; "127.0.0.1:8044")
$remoteDS:=Open datastore:C1452($connect; "HDI")

$result:=$remoteDS.Students.registerNewStudent(Form:C1466.data)

Form:C1466.response:=JSON Stringify:C1217($result.toObject(); *)

If (OB Class:C1730($result).name="StudentsEntity")
	Form:C1466.students:=$remoteDS.Students.all()
	$row:=$result.indexOf(Form:C1466.students)+1
	$selection:=$remoteDS.Students.newSelection().add($result)
	OBJECT SET VISIBLE:C603(*; "CreationOK"; True:C214)
	
	OBJECT SET TITLE:C194(*; "ExposedResult"; "Student created")
	
	CALL FORM:C1391(Current form window:C827; "selectRowStudent"; $row; $selection)
End if 

manageTexts