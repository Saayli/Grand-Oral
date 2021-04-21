<!doctype html>
<html  lang="fr-FR">
   <head><meta charset="utf-8"></head>
   <body>
<h3>Résultat de la requête {{rekete}} sur la colonne {{champ}} </h3>

% titres = ["id", "Pseudo", "Date de naissance", "E-mail", "Mot de passe"]

<table border = 1>
  <thead>
      %for titre in titres:
     <td>{{titre}}</td>
     %end
  </thead>
  
%l = len(res)

  <p>{{ l }} résultats trouvés</p>

%for ligne in res:
    <tr>
    % for col in ligne:
        <td>{{col}}</td>
    % end
     </tr>
%end
</table>
<a href = "/">Retourner à la page d'accueil</a><br>
<a href = "/recherche">--> rechercher un élève</a>

</body>
</html>
