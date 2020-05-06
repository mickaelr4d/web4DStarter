//%attributes = {"publishedWeb":true}

/*
        -------------------------------------------
        methodAJAX
        Created by: Mickael Rottiers
        Created the: 06/05/20
        -------------------------------------------
*/

  // ATTENTION !!!
  // Ne jamais oublier de déclarer $0 et $1 !
  // En cas d'oubli, la méthode ne fonctionnera pas en mode compilé
C_TEXT:C284($0;$1)
C_DATE:C307($laDateDeNaissance)
C_LONGINT:C283($lAge)
C_OBJECT:C1216($oArguments)
C_OBJECT:C1216($oResponse)  // Nous préparons un objet 4D pour répondre à la requête
$oResponse:=New object:C1471

  // La méthode récupère les valeurs du formulaire web posté et en fait un objet 4D :
$oArguments:=webtools_getArguments 

  // Ici, on met notre code qui fait papa maman :
$laDateDeNaissance:=Date:C102($oArguments.input_dateNaissance)
$lAge:=(Current date:C33-$laDateDeNaissance)\364.15

$oResponse.leMessage:="Vous avez "+String:C10($lAge)+" ans."
$oResponse.errorCode:=0

  // Envoyons notre réponse au navigateur :
C_TEXT:C284($tResponse)
  // Ici, on converti l'objet 4D en un texte au format JSON :
$tResponse:=JSON Stringify:C1217($oResponse)
  // Pour que le navigateur comprenne que le texte est un JSON, il faut lui préciser.
  // Ainsi, dans votre code javascript, vous récupèrerez directement un objet javascript
  // (représentant l'objet 4D $oResponse)
WEB SEND TEXT:C677($tResponse;"application/json")
