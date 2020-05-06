C_LONGINT:C283($lFormEvent)
$lFormEvent:=Form event code:C388
Case of 
	: ($lFormEvent=On Load:K2:1)
		Form:C1466.portNumber:=Get database parameter:C643(Port ID:K37:15)
End case 