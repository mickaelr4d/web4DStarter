//%attributes = {"publishedWeb":true}

/*
        -------------------------------------------
        maMethodePourLeWeb
        Created by: Mickael Rottiers
        Created the: 06/05/20
        -------------------------------------------
*/

  // ATTENTION !!!
  // Ne jamais oublier de déclarer $0 et $1 !
  // En cas d'oubli, la méthode ne fonctionnera pas en mode compilé
C_TEXT:C284($0;$1)

  // Ici j'exécute le code qui m'intéresse
C_OBJECT:C1216($e_person;$es_persons)
$es_persons:=ds:C1482.PERSON.all()
If ($es_persons.length=0)
	$e_person:=ds:C1482.PERSON.new()
	$e_person.Firstname:="Jean"
	$e_person.Lastname:="Dupont"
	$e_person.save()
	
	
	$e_person:=ds:C1482.PERSON.new()
	$e_person.Firstname:="Pierre"
	$e_person.Lastname:="Etleloup"
	$e_person.save()
	
	
	$e_person:=ds:C1482.PERSON.new()
	$e_person.Firstname:="Philippe"
	$e_person.Lastname:="Smith"
	$e_person.save()
	
	
	$e_person:=ds:C1482.PERSON.new()
	$e_person.Firstname:="Albert"
	$e_person.Lastname:="Premier"
	$e_person.save()
End if 

$0:="OK"  // Je peux retourner du texte qui sera affiché sur la page (optionnel)
