//%attributes = {"invisible":true}

var $row : Integer
var $selection : Object

If (btnTrace)
	TRACE:C157
End if 

$row:=$1
$selection:=$2

OBJECT SET SCROLL POSITION:C906(*; "ListBoxStudentsExposed"; $row)
LISTBOX SELECT ROWS:C1715(*; "ListBoxStudentsExposed"; $selection; lk replace selection:K53:1)