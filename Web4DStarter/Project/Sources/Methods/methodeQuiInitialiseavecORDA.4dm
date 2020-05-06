//%attributes = {"publishedWeb":true}

/*
        -------------------------------------------
        methodeQuiInitialiseavecORDA
        Created by: Mickael Rottiers
        Created the: 06/05/20
        -------------------------------------------
*/

  // ATTENTION !!!
  // Ne jamais oublier de déclarer $0 et $1 !
  // En cas d'oubli, la méthode ne fonctionnera pas en mode compilé
C_TEXT:C284($0;$1)
C_OBJECT:C1216(varProcess_selectionEntite)
varProcess_selectionEntite:=ds:C1482.PERSON.all()

  // Je ne retourne rien volontairement, dans ce cas, rien ne sera afficher sur la page Web.

