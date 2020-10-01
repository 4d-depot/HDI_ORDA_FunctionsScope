

C_LONGINT:C283($number)
C_OBJECT:C1216($obj; $request)
C_COLLECTION:C1488($log)

If (btnTrace)
	TRACE:C157
End if 

Case of 
	: (Application type:C494=4D Local mode:K5:1)
		OBJECT SET VISIBLE:C603(*; "StartCS@"; True:C214)
		
	: (Application type:C494=4D Remote mode:K5:5)
		OBJECT SET VISIBLE:C603(*; "StartCS@"; False:C215)
		
		Form:C1466.requests:=New collection:C1472
		
		$number:=1
		
		$log:=Form:C1466.ds.getRequestLog().reverse()
		
		For each ($obj; $log)
			$request:=New object:C1471
			$request.url:=$obj.url
			$request.response:=$obj.response
			$request.number:=$number
			$number:=$number+1
			Form:C1466.requests.push($request)
		End for each 
		
		Form:C1466.requests:=Form:C1466.requests.orderBy("number")
		
End case 



