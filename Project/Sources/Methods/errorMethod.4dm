//%attributes = {}


ARRAY LONGINT:C221($errcodes; 0)
ARRAY TEXT:C222($errcomps; 0)
ARRAY TEXT:C222($errmess; 0)

GET LAST ERROR STACK:C1015($errcodes; $errcomps; $errmess)

lastError:=$errcodes{Size of array:C274($errcodes)}

lastErrorMessage:=$errmess{Size of array:C274($errmess)}