<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>micro-url2</title>
  <meta name="description" content="tout petit">
</head>
<body><pre><?php

include "micro_url2.dbconf.php";

try {

    $connexion = new PDO(DB_DRIVER . ":host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=" . DB_CHARSET, DB_LOGIN, DB_PASS, DB_OPTIONS);

    // (4)Créer une requête d'insertion qui ajoute une entrée dans votre bdd.

    $requeteInsertion = "INSERT INTO `url` (`url_name`, shortcut, `datetime`, `description`) 
                         VALUES ('https://www.mobilityurban.fr/roue-electrique-1/', 'MU', '2021-01-15 10:21:02', 'site de vente de gyroroues et autres moyens de déplacement électrique personnel');";
    $prepare = $connexion->prepare($requeteInsertion);
    $prepare->execute();
    $resultat = $prepare->rowCount(); // rowCount() nécessite PDO::MYSQL_ATTR_FOUND_ROWS => true
$lastInsertedUrlId = $connexion->lastInsertId(); // on récupère l'id automatiquement créé par SQL
print_r([$requeteInsertion, $resultat, $lastInsertedUrlId]); // debug & vérification

    //(3)Créer une requête de sélection qui retourne une entrée issue de votre bdd.

$requeteSelection = "SELECT `shortcut` 
                     FROM `url` 
                     WHERE `url_id` = :url_id;";
    $prepare = $connexion->prepare($requeteSelection);
    $prepare->execute(array(":url_id" => 2));
    $resultat = $prepare->fetchAll();
    print_r([$requeteSelection, $resultat]);

// //(5)Créer une requête de modification qui modifie la dernière entrée.

    $requeteModification = "UPDATE `url`
                            SET `shortcut` = :shortcut
                            WHERE `url_id` = :url_id;";
    $prepare = $connexion->prepare($requeteModification);
    $prepare->execute(array(
      ":url_id" => $lastInsertedUrlId,
      ":shortcut" => "MOBURBAN"
    ));
    $resultat = $prepare->rowCount();
    print_r([$requeteModification, $resultat]);


// // (6) Créer une requête de suppression qui supprime une entrée.

// // $requeteSuppression = "DELETE FROM `url`
// //                        WHERE ((`url_id` = :url_id));";
// //      $prepare = $connexion->prepare($requeteSuppression);
// //      $prepare->execute(array($lastInsertedUrlId)); // on lui passe l'id tout juste créé
// //      $resultat = $prepare->rowCount();
// //      print_r([$requeteSuppression, $resultat, $lastInsertedUrlId]); // debug & vérification



// // (7)Créer une requête qui ajoute l'entrée suivante :
// // - url : https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/
// // - shortcut : ztz7
// // - description : L'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d'accéder aux données des autres joueurs.

$requeteInsertion2 = "INSERT INTO `url` (`url_name`, `shortcut`, `description`, `datetime`)
                      VALUES (:url, :shortcut, :description, :datetime);";
$prepare = $connexion->prepare($requeteInsertion2);
$prepare->execute(array(
":url_name" => "https://www.zataz.com/total-energie-direct-obligee-de-stopper-un-jeu-en-ligne-suite-a-une-fuite-de-donnees/",
":shortcut" => "ztz7",
":description" => "L'entreprise Total Energie Direct avait lancé un jeu en ligne. Le concours a dû être stoppé. Il était possible d'accéder aux données des autres joueurs.",
":datetime" => date (`Y-m-d H:i:s`)
));
$resultat = $prepare->rowCount();
print_r([$requeteInsertion2, $resultat]); // debug & vérification


// Créer une requête qui ajoute le nouvel hashtag suivant dans la bdd :
//  hashtag : piratage

$requeteInsertion3 = "INSERT INTO `keywords` (keywords_name)
                      VALUES (:keywords_name);";
 $prepare = $connexion->prepare($requeteInsertion3);
 $prepare->execute(array(
    ":keywords_name" => "piratage"
));
$resultat = $prepare->rowCount();
print_r([$requeteInsertion3, $resultat]); // debug & vérification


//  //Créer une requête qui lie le hashtag "piratage" à l'entrée de l'étape 7.

$requeteInsertion4 = "INSERT INTO `assoc_keywords_url` (`assoc_url_id`, `assoc_keywords_id`) 
                      VALUES (:assoc_url_id, :assoc_keywords_id)";
$prepare = $connexion->prepare($requeteInsertion4);
$prepare->execute(array(
   ":assoc_url_id" => "83",
   ":assoc_keywords_id" => 1, 
));
print_r([$requeteInsertion4, $resultat]);

// // Créer une requête de sélection pour requêter des données dont  le mot-clé est "piratage" et afficher le titre de chaque lien concerné.
    
$requeteSelectioncolonne = "SELECT keywords_name, url_name
                               FROM assoc_keywords_url
                               INNER JOIN keywords ON keywords_id = assoc_url_keywords_id
                               INNER JOIN url ON url_id = assoc_url_id
                               WHERE keywords_id = 1;";
    $prepare = $connexion->prepare($requeteSelectioncolonne);
    $prepare->execute();
    $resultat = $prepare->fetchAll();
    print_r([$requeteSelectioncolonne, $resultat]); // debug & vérification


} catch (PDOException $e) {

    // en cas d'erreur, on récup et on affiche, grâce au try/catch

    exit("❌🙀💀 OOPS :\n" . $e->getMessage());

  }


?></pre></body>
</html