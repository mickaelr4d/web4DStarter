$ (document).ready(function(){
	alert('jQuery est correctement chargé.');



	$("#form_usingAjax").submit(function(event) { // On intercepte l'envoi du formulaire

		var formContent = $(this).serialize(); // On prend tout le contenu du formulaire et on en fait un objet

		// Voici la fameuse requête AJAX :
		$.ajax(
			{
				method: "POST",
				url: "/4DACTION/methodAJAX",
				data: formContent
			}
		)
		.done(
			// Quand le serveur Web a répondu :
			function(response) {
				// response contient ici un objet javascript (car nous avons envoyé un texte en précisant "application/json")
				// Verifions que notre attribut errorCode a bien une valeur à 0 :
				if (response.errorCode == 0) {
					// On affiche la valeur de l'attribut 'leMessage' de l'objet que nous avons reçu en réponse
					alert(response.leMessage);
				}
			}
		);

		event.preventDefault();// Ne pas oublier cette ligne pour éviter que le navigateur
								// n'execute tout de même l'action du formulaire <form action=""...>

	});

});


