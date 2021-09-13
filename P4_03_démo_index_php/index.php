<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Données ExpressFood</title>

	<style> 
		th, td { border: 1px solid #7f858c !important; background : #e1e1e1;}
		p { text-align : center; color: blue;}
		body {background: lemonchiffon;}
		.table-bordered {border: 5px double #1a436c;}
	</style>

</head>

    <?php

    $bdd = new PDO('mysql:host=localhost;dbname=expressfood', 'root', '', array(PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING, PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8'));

    ?>

<body>

    <h1 class="text-center">Affichage des données ExpressFood</h1><hr>

    <div class="container">
	
	<div>

		<h3 class="text-center">Afficher la liste compléte des plats et desserts</h3>
			<p> SELECT * FROM plat<br>
				UNION<br>
				SELECT * FROM dessert;
			</p>			

	
        <?php
        $data = $bdd->query("SELECT * FROM plat
							UNION
							SELECT * FROM dessert
							;");
							

        echo '<table class="table table-bordered text-center mt-5"><tr>';
        for ($i = 0; $i < $data->columnCount();$i++)
        {
            $colonne = $data->getColumnMeta($i);
            // Echo '<pre>'; print_r($colonne); echo '</pre>';
            echo "<th>$colonne[name]</th>";
        }
        echo '</tr>';
        while($marque = $data->fetch(PDO::FETCH_ASSOC))
        {
            echo '<tr>';
            foreach($marque as $value)
                   
        {
             echo "<td>$value</td>";  // Echo '<pre>'; print_r($value); echo '</pre>';
        }
        echo '</tr>';
    }
    echo '</table>';

    ?>
	<hr>
	
	</div>
  

	<div>

		<h3 class="text-center">Afficher les plats et desserts du jour</h3>
			<p> SELECT * FROM plat<br>
				 WHERE plat_du_jour = true<br>
				 UNION<br>
				 SELECT * FROM dessert<br>
				 WHERE dessert_du_jour = true;
			</p>
	
        <?php
        $data = $bdd->query("SELECT * FROM plat
							 WHERE plat_du_jour = true
							 UNION
							 SELECT * FROM dessert
							 WHERE dessert_du_jour = true
							 ;");

        echo '<table class="table table-bordered text-center mt-5"><tr>';
        for ($i = 0; $i < $data->columnCount();$i++)
        {
            $colonne = $data->getColumnMeta($i);
        
            echo "<th>$colonne[name]</th>";
        }
        echo '</tr>';
        while($marque = $data->fetch(PDO::FETCH_ASSOC))
        {
            echo '<tr>';
            foreach($marque as $value)
                   
        {
            echo "<td>$value</td>";
        }
        echo '</tr>';
    }
    echo '</table>';

    ?>
	<hr>
	
	</div>
	
	<div>

		<h3 class="text-center">Afficher les commandes qui comportent le plat 10</h3>
			<p>SELECT * FROM commande<br>
                WHERE commande_id IN (<br>
                SELECT commande_id FROM details_commande<br>
                WHERE plat_id = '10');			
			</p>
	
        <?php
        $data = $bdd->query("SELECT * FROM commande
							WHERE commande_id IN (
							SELECT commande_id FROM details_commande
							WHERE plat_id = '10'
							)
							;");

        echo '<table class="table table-bordered text-center mt-5"><tr>';
        for ($i = 0; $i < $data->columnCount();$i++)
        {
            $colonne = $data->getColumnMeta($i);
          
            echo "<th>$colonne[name]</th>";
        }
        echo '</tr>';
        while($marque = $data->fetch(PDO::FETCH_ASSOC))
        {
            echo '<tr>';
            foreach($marque as $value)
                   
        {
            echo "<td>$value</td>";
        }
        echo '</tr>';
    }
    echo '</table>';

    ?>
		<hr>

	</div>
	
	<div>

		<h3 class="text-center">Afficher les commandes qui comportent le dessert 8</h3>
			<p>SELECT * FROM commande<br>
				WHERE commande_id IN (<br>
				SELECT commande_id FROM details_commande<br>
				WHERE dessert_id = '8');			
			</p>
	
        <?php
        $data = $bdd->query("SELECT *
							FROM commande
							WHERE commande_id IN (
							SELECT commande_id FROM details_commande
							WHERE dessert_id = '8'
								)
							;");

        echo '<table class="table table-bordered text-center mt-5"><tr>';
        for ($i = 0; $i < $data->columnCount();$i++)
        {
            $colonne = $data->getColumnMeta($i);

            echo "<th>$colonne[name]</th>";
        }
        echo '</tr>';
        while($marque = $data->fetch(PDO::FETCH_ASSOC))
        {
            echo '<tr>';
            foreach($marque as $value)
                   
        {
            echo "<td>$value</td>";
        }
        echo '</tr>';
    }
    echo '</table>';

    ?>
		<hr>

	</div>
	
	<div>

		<h3 class="text-center">Afficher les commandes qui comportent le plat 11, le dessert 12 et les informations de livraison</h3>
			<p>SELECT c.commande_id, c.montant_total_ht, DATE_FORMAT(c.date_de_commande, '%d-%m-%Y') AS Date,<br>
                l.prenom, l.nom, l.adresse, l.code_postal, l.ville, l.telephone, u.prenom AS prenom_livreur, u.nom AS nom_livreur<br>
                FROM commande c<br>
                JOIN livraison l ON c.commande_id = l.commande_id<br>
                JOIN utilisateur u ON l.livreur_id = u.utilisateur_id <br>
                WHERE c.commande_id IN (<br>
                SELECT commande_id FROM details_commande<br>
                WHERE plat_id = '11'<br>
                AND dessert_id = '12');			
			</p>
	
        <?php
        $data = $bdd->query("SELECT c.commande_id, c.montant_total_ht, DATE_FORMAT(c.date_de_commande, '%d-%m-%Y') AS Date, l.prenom, l.nom, l.adresse, l.code_postal, l.ville, l.telephone, u.prenom AS prenom_livreur, u.nom AS nom_livreur
                            FROM commande c
                            JOIN livraison l ON c.commande_id = l.commande_id
                            JOIN utilisateur u ON l.livreur_id = u.utilisateur_id 
                            WHERE c.commande_id IN (
                            SELECT commande_id FROM details_commande
                            WHERE plat_id = '11'
                            AND dessert_id = '12'
                            )
                            ; ");

        echo '<table class="table table-bordered text-center mt-5"><tr>';
        for ($i = 0; $i < $data->columnCount();$i++)
        {
            $colonne = $data->getColumnMeta($i);
      
            echo "<th>$colonne[name]</th>";
        }
        echo '</tr>';
        while($marque = $data->fetch(PDO::FETCH_ASSOC))
        {
            echo '<tr>';
            foreach($marque as $value)
                   
        {
            echo "<td>$value</td>";
        }
        echo '</tr>';
    }
    echo '</table>';

    ?>
		<hr>

	</div>
	
	<div>

		<h3 class="text-center">Afficher les quantités de desserts du plus au moins vendus</h3>
			<p>SELECT nom_dessert, description_dessert,COUNT(qte_dessert) AS Qte, prix_dessert<br>
                FROM details_commande<br>
                JOIN dessert ON details_commande.dessert_id = dessert.dessert_id<br>
                GROUP BY nom_dessert<br>
                ORDER BY COUNT(qte_dessert) DESC;			
			</p>
	
        <?php
        $data = $bdd->query("SELECT nom_dessert, description_dessert,COUNT(qte_dessert) AS Qte, prix_dessert
							FROM details_commande
							JOIN dessert ON details_commande.dessert_id = dessert.dessert_id
							GROUP BY nom_dessert
							ORDER BY COUNT(qte_dessert) DESC;");

        echo '<table class="table table-bordered text-center mt-5"><tr>';
        for ($i = 0; $i < $data->columnCount();$i++)
        {
            $colonne = $data->getColumnMeta($i);
        
            echo "<th>$colonne[name]</th>";
        }
        echo '</tr>';
        while($marque = $data->fetch(PDO::FETCH_ASSOC))
        {
            echo '<tr>';
            foreach($marque as $value)
                   
        {
            echo "<td>$value</td>";
        }
        echo '</tr>';
    }
    echo '</table>';

    ?>
		<hr>

	</div>
	
	<div>

		<h3 class="text-center">Afficher les commandes passées par un utilisateur</h3>
			<p>SELECT * FROM commande<br>
                WHERE utilisateur_id IN (<br>
                SELECT utilisateur_id FROM utilisateur<br>
                WHERE utilisateur.nom = 'Serolle');			
			</p>
	
        <?php
        $data = $bdd->query("SELECT * FROM commande
							WHERE utilisateur_id IN (
							SELECT utilisateur_id FROM utilisateur
							WHERE utilisateur.nom = 'Serolle'
								)
							;");

        echo '<table class="table table-bordered text-center mt-5"><tr>';
        for ($i = 0; $i < $data->columnCount();$i++)
        {
            $colonne = $data->getColumnMeta($i);
       
            echo "<th>$colonne[name]</th>";
        }
        echo '</tr>';
        while($marque = $data->fetch(PDO::FETCH_ASSOC))
        {
            echo '<tr>';
            foreach($marque as $value)
                   
        {
            echo "<td>$value</td>";
        }
        echo '</tr>';
    }
    echo '</table>';

    ?>
		<hr>

	</div>
	
	<div>

		<h3 class="text-center">Afficher les livreurs disponibles ayant un stock suffisant</h3>
			<p>SELECT * FROM livreur<br>
				WHERE statut_livreur = 'Disponible' <br>
				AND stock_plat_1 >= 4 <br>
				AND stock_dessert_2 >= 4;			
			</p>
	
        <?php
        $data = $bdd->query("SELECT * FROM livreur
							WHERE statut_livreur = 'Disponible' 
							AND stock_plat_1 >= 4 
							AND stock_dessert_2 >= 4;");

        echo '<table class="table table-bordered text-center mt-5"><tr>';
        for ($i = 0; $i < $data->columnCount();$i++)
        {
            $colonne = $data->getColumnMeta($i);
     
            echo "<th>$colonne[name]</th>";
        }
        echo '</tr>';
        while($marque = $data->fetch(PDO::FETCH_ASSOC))
        {
            echo '<tr>';
            foreach($marque as $value)
                   
        {
            echo "<td>$value</td>";
        }
        echo '</tr>';
    }
    echo '</table>';

    ?>
		<hr>

	</div>
	
	<div>

		<h3 class="text-center">Afficher les livreurs en livraison</h3>
			<p>SELECT * FROM livreur<br>
				WHERE statut_livreur = 'En livraison';			
			</p>
	
        <?php
        $data = $bdd->query("SELECT * FROM livreur
				            WHERE statut_livreur = 'En livraison' ;");

        echo '<table class="table table-bordered text-center mt-5"><tr>';
        for ($i = 0; $i < $data->columnCount();$i++)
        {
            $colonne = $data->getColumnMeta($i);

            echo "<th>$colonne[name]</th>";
        }
        echo '</tr>';
        while($marque = $data->fetch(PDO::FETCH_ASSOC))
        {	
            echo '<tr>';
            foreach($marque as $value)
                   
        {
            echo "<td>$value</td>";
        }
        echo '</tr>';
    }
    echo '</table>';

    ?>
		<hr>

	</div>
	
	<div>

		<h3 class="text-center">Afficher toutes les commandes passées  entre le 19 et le 21 juillet 2021 inclus</h3>
			<p>SELECT * FROM commande<br>
				WHERE date_de_commande >= '2021-07-19' <br>
				AND date_de_commande < '2021-07-22';			
			</p>
	
        <?php
        $data = $bdd->query("SELECT * FROM commande
							WHERE date_de_commande >= '2021-07-19' 
							AND date_de_commande < '2021-07-22'; ");

        echo '<table class="table table-bordered text-center mt-5"><tr>';
        for ($i = 0; $i < $data->columnCount();$i++)
        {
            $colonne = $data->getColumnMeta($i);

            echo "<th>$colonne[name]</th>";
        }
        echo '</tr>';
        while($marque = $data->fetch(PDO::FETCH_ASSOC))
        {
            echo '<tr>';
            foreach($marque as $value)
                   
        {
            echo "<td>$value</td>";
        }
        echo '</tr>';
    }
    echo '</table>';

    ?>
		<hr>

	</div>
	
	<div>

		<h3 class="text-center">Afficher toutes les commandes passées  le 28 juillet 2021</h3>
			<p> SELECT * FROM commande<br>
				WHERE date_de_commande >= '2021-07-28' <br>
				AND date_de_commande < '2021-07-29';
		    </p>
	
        <?php
        $data = $bdd->query("SELECT * FROM commande
							WHERE date_de_commande >= '2021-07-28' 
							AND date_de_commande < '2021-07-29';  ");

        echo '<table class="table table-bordered text-center mt-5"><tr>';
        for ($i = 0; $i < $data->columnCount();$i++)
        {
            $colonne = $data->getColumnMeta($i);
   
            echo "<th>$colonne[name]</th>";
        }
        echo '</tr>';
        while($marque = $data->fetch(PDO::FETCH_ASSOC))
        {
            echo '<tr>';
            foreach($marque as $value)
                   
        {
            echo "<td>$value</td>";
        }
        echo '</tr>';
    }
    echo '</table>';

    ?>
		<hr>

	</div>
	
	<div>

		<h3 class="text-center">Afficher toutes les commandes dont le délai de livraison est supérieure à 20 minutes</h3>
			<p>SELECT c.commande_id , date_de_commande , date_livraison,<br>
                TIMESTAMPDIFF(MINUTE, date_de_commande , date_livraison ) AS Délais_de_livraison_en_minutes <br>
                FROM commande c<br>
                JOIN livraison on c.commande_id = livraison.commande_id<br>
                WHERE TIMESTAMPDIFF(MINUTE, date_de_commande , date_livraison ) >= 20;			
			</p>
	
        <?php
        $data = $bdd->query("SELECT c.commande_id , date_de_commande , date_livraison,
                            TIMESTAMPDIFF(MINUTE, date_de_commande , date_livraison ) AS Délais_de_livraison_en_minutes 
                            FROM commande c
                            JOIN livraison on c.commande_id = livraison.commande_id
                            WHERE TIMESTAMPDIFF(MINUTE, date_de_commande , date_livraison ) >= 20;");

        echo '<table class="table table-bordered text-center mt-5"><tr>';
        for ($i = 0; $i < $data->columnCount();$i++)
        {
            $colonne = $data->getColumnMeta($i);
    
            echo "<th>$colonne[name]</th>";
        }
        echo '</tr>';
        while($marque = $data->fetch(PDO::FETCH_ASSOC))
        {
            echo '<tr>';
            foreach($marque as $value)
                   
        {
            echo "<td>$value</td>";
        }
        echo '</tr>';
    }
    echo '</table>';

    ?>
		<hr>

	</div>
	
	<div>

		<h3 class="text-center">Afficher le total de commandes par type de paiements</h3>
			<p>SELECT type_paiement, COUNT(type_paiement) AS Total<br>
				FROM paiement<br>
				GROUP BY type_paiement<br>
				ORDER BY COUNT(type_paiement) DESC;			
			</p>
	
        <?php
        $data = $bdd->query("SELECT type_paiement, COUNT(type_paiement) AS Total
							FROM paiement
							GROUP BY type_paiement
							ORDER BY COUNT(type_paiement) DESC; ");

        echo '<table class="table table-bordered text-center mt-5"><tr>';
        for ($i = 0; $i < $data->columnCount();$i++)
        {
            $colonne = $data->getColumnMeta($i);
        
            echo "<th>$colonne[name]</th>";
        }
        echo '</tr>';
        while($marque = $data->fetch(PDO::FETCH_ASSOC))
        {
            echo '<tr>';
            foreach($marque as $value)
                   
        {
            echo "<td>$value</td>";
        }
        echo '</tr>';
    }
    echo '</table>';

    ?>
		<hr>

	</div>
	
	<div>

		<h3 class="text-center">Afficher le total des paiements en liquide récoltés par livreurs</h3>
			<p>SELECT DATE_FORMAT(l.date_livraison, '%d-%m-%Y') AS Date, l.livreur_id, CONCAT( u.prenom, ' ', u.nom) AS Livreur , montant_total_ht, tva,<br>
                ROUND (SUM(montant_total_ht * (tva/100+1)),2) AS total_du_TTC, moyen_paiement<br>
                FROM livraison l<br>
                JOIN commande c ON c.commande_id = l.commande_id<br>
                JOIN paiement p ON c.commande_id = p.commande_id<br>
                JOIN livreur li ON li.livreur_id = l.livreur_id<br>
                JOIN utilisateur u ON li.livreur_id = u.utilisateur_id<br>
                WHERE moyen_paiement = 'En liquide' AND date_de_commande >=  '2021-07-28' AND date_de_commande < '2021-07-29'<br>
                GROUP BY livreur_id;			
			</p>
	
        <?php
        $data = $bdd->query("SELECT DATE_FORMAT(l.date_livraison, '%d-%m-%Y') AS Date, l.livreur_id, 
                            CONCAT( u.prenom, ' ', u.nom) AS Livreur , montant_total_ht, tva, 
                            ROUND (SUM(montant_total_ht * (tva/100+1)),2) AS total_du_TTC, moyen_paiement
                            FROM livraison l
                            JOIN commande c ON c.commande_id = l.commande_id
                            JOIN paiement p ON c.commande_id = p.commande_id
                            JOIN livreur li ON li.livreur_id = l.livreur_id
                            JOIN utilisateur u ON li.livreur_id = u.utilisateur_id
                            WHERE moyen_paiement = 'En liquide' AND date_de_commande >=  '2021-07-28' AND date_de_commande < '2021-07-29'
                            GROUP BY livreur_id; ");

        echo '<table class="table table-bordered text-center mt-5"><tr>';
        for ($i = 0; $i < $data->columnCount();$i++)
        {
            $colonne = $data->getColumnMeta($i);
  
            echo "<th>$colonne[name]</th>";
        }
        echo '</tr>';
        while($marque = $data->fetch(PDO::FETCH_ASSOC))
        {
            echo '<tr>';
            foreach($marque as $value)
                   
        {
            echo "<td>$value</td>";
        }
        echo '</tr>';
    }
    echo '</table>';

    ?>
		<hr>

	</div>

    <div>

		<h3 class="text-center">Afficher les commandes avec les informations de paiement et de facturation</h3>
			<p>SELECT c.commande_id, c.montant_total_ht, p.type_paiement, p.statut_paiement, p.moyen_paiement, f.facture_id, f.adresse, f.code_postal,<br>
                DATE_FORMAT(f.date_facture, '%d-%m-%Y') AS Date_de_facture<br>
                FROM commande c<br>
                JOIN paiement p ON c.commande_id = p.commande_id<br>
                JOIN facture f ON p.paiement_id = f.paiement_id<br>
                WHERE c.date_de_commande >= '2021-07-26'<br>
                AND c.date_de_commande < '2021-07-29';
			</p>
	
        <?php
        $data = $bdd->query("SELECT c.commande_id, c.montant_total_ht, p.type_paiement, p.statut_paiement, p.moyen_paiement, f.facture_id, f.adresse, f.code_postal, DATE_FORMAT(f.date_facture, '%d-%m-%Y') AS Date_de_facture
                            FROM commande c
                            JOIN paiement p ON c.commande_id = p.commande_id
                            JOIN facture f ON p.paiement_id = f.paiement_id
                            WHERE c.date_de_commande >= '2021-07-26'
                            AND c.date_de_commande < '2021-07-29'
                            ; ");

        echo '<table class="table table-bordered text-center mt-5"><tr>';
        for ($i = 0; $i < $data->columnCount();$i++)
        {
            $colonne = $data->getColumnMeta($i);
          
            echo "<th>$colonne[name]</th>";
        }
        echo '</tr>';
        while($marque = $data->fetch(PDO::FETCH_ASSOC))
        {
            echo '<tr>';
            foreach($marque as $value)
                   
        {
            echo "<td>$value</td>";
        }
        echo '</tr>';
    }
    echo '</table>';

    ?>
		<hr>

	</div>
	
	<div>

		<h3 class="text-center">Afficher le chiffre d'affaires de la journée du 28 juillet 2021</h3>
			<p>SELECT DATE_FORMAT(date_de_commande, '%d-%m-%Y') AS Date,<br>
				SUM(montant_total_ht) AS Montant_total_ht_de_la_journée<br>
				FROM commande<br>
				WHERE date_de_commande >= '2021-07-28' <br>
				AND date_de_commande < '2021-07-29';			
			</p>
	
        <?php
        $data = $bdd->query("SELECT DATE_FORMAT(date_de_commande, '%d-%m-%Y') AS Date,
							SUM(montant_total_ht) AS Montant_total_ht_de_la_journée
							FROM commande
							WHERE date_de_commande >= '2021-07-28' 
							AND date_de_commande < '2021-07-29'; ");

        echo '<table class="table table-bordered text-center mt-5"><tr>';
        for ($i = 0; $i < $data->columnCount();$i++)
        {
            $colonne = $data->getColumnMeta($i);
         
            echo "<th>$colonne[name]</th>";
        }
        echo '</tr>';
        while($marque = $data->fetch(PDO::FETCH_ASSOC))
        {
            echo '<tr>';
            foreach($marque as $value)
                   
        {
            echo "<td>$value</td>";
        }
        echo '</tr>';
    }
    echo '</table>';

    ?>
		<hr>

	</div>
	
	<div>

		<h3 class="text-center">Afficher le chiffre d'affaires de l'année 2021 avec la TVA</h3>
			<p>SELECT DATE_FORMAT(date_de_commande, '%Y') AS Année,<br>
				SUM(montant_total_ht) AS Chiffre_d_affaire_annuel_ht, tva<br>
				FROM commande<br>
				WHERE date_de_commande >= '2021-01-01' <br>
				AND date_de_commande < '2022-01-01'<br>
				GROUP BY tva;			
			</p>
	
        <?php
        $data = $bdd->query("SELECT DATE_FORMAT(date_de_commande, '%Y') AS Année,
							SUM(montant_total_ht) AS Chiffre_d_affaire_annuel_ht, tva
							FROM commande
							WHERE date_de_commande >= '2021-01-01' 
							AND date_de_commande < '2022-01-01'
							GROUP BY tva; ");

        echo '<table class="table table-bordered text-center mt-5"><tr>';
        for ($i = 0; $i < $data->columnCount();$i++)
        {
            $colonne = $data->getColumnMeta($i);
          
            echo "<th>$colonne[name]</th>";
        }
        echo '</tr>';
        while($marque = $data->fetch(PDO::FETCH_ASSOC))
        {
            echo '<tr>';
            foreach($marque as $value)
                   
        {
            echo "<td>$value</td>";
        }
        echo '</tr>';
    }
    echo '</table>';

    ?>
		<hr>

	</div>

	</div>     

</body>
</html>
