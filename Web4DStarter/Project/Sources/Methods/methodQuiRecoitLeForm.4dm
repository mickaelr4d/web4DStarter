//%attributes = {"publishedWeb":true}

/*
        -------------------------------------------
        methodQuiRecoitLeForm
        Created by: Mickael Rottiers
        Created the: 06/05/20
        -------------------------------------------
*/

  // ATTENTION !!!
  // Ne jamais oublier de déclarer $0 et $1 !
  // En cas d'oubli, la méthode ne fonctionnera pas en mode compilé
C_TEXT:C284($0;$1)
C_OBJECT:C1216($e_Person)
C_OBJECT:C1216($oArguments)

  // La méthode récupère les valeurs du formulaire web posté et en fait un objet 4D :
$oArguments:=webtools_getArguments 

$e_Person:=ds:C1482.PERSON.new()
$e_Person.Firstname:=$oArguments.input_firstname
  // input_firstname est le nom donné au champ de notre formulaire Web
  // <input name="input_firstname" ...>

$e_Person.Lastname:=$oArguments.input_lastname
$e_Person.save()

  // Lorsque le navigateur envoie une requête,
  // (quand on clique sur un lien A HREF ou quand on poste un FORM ACTION)
  // il attend un réponse de la part du serveur Web
  // Il est donc primordial d'envoyer une réponse.
  // Cette réponse peut être de plusieurs formes :
Case of 
	: (True:C214)
		  // Exemple 1 : Une redirection (très très utilisé)
		WEB SEND HTTP REDIRECT:C659("/formulaire_ok.shtml")
		
	: (True:C214)
		  // Exemple 2 : Du texte (on ne fera probablement jamais ça dans la vraie vie)
		WEB SEND TEXT:C677("Nouvelle personne correctement créée.")
		
	: (True:C214)
		  // Exemple 3 : Un blob
		C_BLOB:C604($unblob)
		WEB SEND BLOB:C654($unblob;"audio/wav")  // On précise le format
		
	: (True:C214)
		  // Exemple 4 : Un fichier
		WEB SEND FILE:C619("/index.html")
		
	: (True:C214)
		  // Exemple 5 : Du contenu brut morcelées
		C_BLOB:C604($unblob)
		WEB SEND RAW DATA:C815($unblob;*)
		
		
		
End case 




