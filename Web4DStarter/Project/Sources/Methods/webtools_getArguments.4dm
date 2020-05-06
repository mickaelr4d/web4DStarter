//%attributes = {}

/*
        -------------------------------------------
        webtools_getArguments
        Created by: Mickael Rottiers
        Created the: 06/05/20
        -------------------------------------------
*/

  // Syntaxe :
  // $mesArguments:=webtools_getArguments

C_OBJECT:C1216($0)
C_LONGINT:C283($curs)
C_OBJECT:C1216($oParams)
$oParams:=New object:C1471

  // Récupérer le contenu du form html
ARRAY TEXT:C222($at_names;0)
ARRAY TEXT:C222($at_values;0)
WEB GET VARIABLES:C683($at_names;$at_values)

For ($curs;1;Size of array:C274($at_names))
	$oParams[$at_names{$curs}]:=$at_values{$curs}
End for 

$0:=$oParams
