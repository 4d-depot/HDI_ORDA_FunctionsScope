Class extends DataClass

exposed Function registerNewStudent($student : Object) : Object
	var $entity : cs:C1710.StudentsEntity
	var $status : Object
	
	$entity:=ds:C1482.Students.new()
	$entity.fromObject($student)
	$entity.studentId:=This:C1470.computeStudentId()
	$status:=$entity.save()
	
	If ($status.success)
		$0:=$entity
	Else 
		$0:=$status
	End if 
	
	// This function not callable from a REST client
Function computeStudentId() : Integer
	//compute a new student Id
	Use (Storage:C1525.infos)
		Storage:C1525.infos.studentId:=Storage:C1525.infos.studentId+1
		$0:=Storage:C1525.infos.studentId
	End use 