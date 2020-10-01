//%attributes = {"invisible":true}

C_TEXT:C284($text)
C_COLLECTION:C1488($coll)
C_OBJECT:C1216($student; $status)
C_LONGINT:C283($yearOffSet; $monthOffSet; $dayOffSet)

TRUNCATE TABLE:C1051([Students:2])
SET DATABASE PARAMETER:C642([Students:2]; Table sequence number:K37:31; 0)

$text:=Document to text:C1236(Get 4D folder:C485(Current resources folder:K5:16)+"students.txt")
$coll:=JSON Parse:C1218($text)
ds:C1482.Students.fromCollection($coll)

For each ($student; ds:C1482.Students.all())
	$yearOffSet:=(Random:C100%8)+18
	$monthOffSet:=(Random:C100%9)+1
	$dayOffSet:=(Random:C100%6)+10
	$student.birthDate:=Add to date:C393(Current date:C33; -$yearOffSet; -$monthOffSet; -$dayOffSet)
	$status:=$student.save()
End for each 


