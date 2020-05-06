//%attributes = {}

/*
        -------------------------------------------
        Welcome
        Created by: Mickael Rottiers
        Created the: 06/05/20
        -------------------------------------------
*/
  // Cette méthode ouvre un dialogue du formulaire qui porte le même nom que la méthode

C_BOOLEAN:C305($1)
C_LONGINT:C283($lProcess;$lWindow)
If (Count parameters:C259=0)
	$lProcess:=New process:C317(Current method name:C684;0;Current method name:C684;True:C214)
Else 
	$lWindow:=Open form window:C675(Current method name:C684)
	DIALOG:C40(Current method name:C684)
	CLOSE WINDOW:C154($lWindow)
End if 