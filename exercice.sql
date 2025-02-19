-- 11 -- Afficher le salaire moyen appliqué lors des recrutements sur la période allant de 2012 a 2014
	
	/* 
	+--------------+
	| AVG(salaire) |
	+--------------+
	|    2437.7778 |
	+--------------+
	 */
SELECT AVG(salaire) FROM employes WHERE date_embauche BETWEEN '2012-01-01' AND '2014-12-31';

-- 12 -- Afficher le nombre de service différent

	/* 
	+--------------------------+
	| COUNT(DISTINCT(service)) |
	+--------------------------+
	|                        9 |
	+--------------------------+
	 */
SELECT COUNT(DISTINCT service) FROM employes;

-- 13 -- Afficher tous les employés (sauf ceux du service production et secrétariat)
	

	/* 
	+----------+-------------+
	| nom      | prenom      |
	+----------+-------------+
	| Laborde  | Jean-pierre |
	| Gallet   | Clement     |
	| Winter   | Thomas      |
	| Grand    | Fabrice     |
	| Collier  | Melanie     |
	| Blanchet | Laura       |
	| Miller   | Guillaume   |
	| Perrin   | Celine      |
	| Vignal   | Mathieu     |
	| Thoyer   | Amandine    |
	| Durand   | Damien      |
	| Chevel   | Daniel      |
	| Martin   | Nathalie    |
	| Sennard  | Emilie      |
	| Lafaye   | Stephanie   |
	+----------+-------------+
	 */
SELECT nom,prenom FROM employes WHERE service NOT IN ('production','secretariat');

-- 14 -- Afficher conjoitement le nombre d'homme et de femme dans l'entreprise


	/* 
	+------+----------+
	| sexe | COUNT(*) |
	+------+----------+
	| m    |       11 |
	| f    |        9 |
	+------+----------+
	 */
SELECT sexe, COUNT(*) FROM employes GROUP BY sexe;

-- 15 -- Afficher les commerciaux ayant été recrutés avant 2015 de sexe masculin et gagnant un salaire supérieur a 2500 €

	
	/* 
	+--------+--------+
	| nom    | prenom |
	+--------+--------+
	| Winter | Thomas |
	+--------+--------+
	 */
SELECT nom,prenom FROM employes WHERE service='commercial' AND sexe= 'm' AND date_embauche < '2015-01-01' AND salaire > 2500;

-- 16 -- Qui a été embauché en dernier

	
	/* 
	+-------------+-----------+--------+------+-----------+---------------+---------+
	| id_employes | prenom    | nom    | sexe | service   | date_embauche | salaire |
	+-------------+-----------+--------+------+-----------+---------------+---------+
	|         990 | Stephanie | Lafaye | f    | assistant | 2017-03-01    |    1775 |
	+-------------+-----------+--------+------+-----------+---------------+---------+
	 */
SELECT * FROM employes ORDER BY date_embauche DESC LIMIT 1;

-- 17 -- Afficher les informations sur l'employé du service commercial gagnant le salaire le plus élevé

	
	/* 
	+-------------+--------+--------+------+------------+---------------+---------+
	| id_employes | prenom | nom    | sexe | service    | date_embauche | salaire |
	+-------------+--------+--------+------+------------+---------------+---------+
	|         415 | Thomas | Winter | m    | commercial | 2011-05-03    |    3550 |
	+-------------+--------+--------+------+------------+---------------+---------+
	 */
SELECT * FROM employes ORDER BY date_embauche DESC LIMIT 1;

-- 18 -- Afficher le prénom du comptable gagnant le meilleur salaire

		/* 
	+---------+
	| prenom  |
	+---------+
	| Fabrice |
	+---------+
	 */
SELECT prenom FROM employes WHERE service= 'compatibilite' ORDER BY salaire DESC LIMIT 1;

-- 19 -- Afficher le prénom de l'informaticien ayant été recruté en premier


	/* 
	+-------------+---------+--------+------+--------------+---------------+---------+
	| id_employes | prenom  | nom    | sexe | service      | date_embauche | salaire |
	+-------------+---------+--------+------+--------------+---------------+---------+
	|         701 | Mathieu | Vignal | m    | informatique | 2013-04-03    |    2500 |
	+-------------+---------+--------+------+--------------+---------------+---------+
	 */
SELECT * FROM employes WHERE service='informatique' ORDER BY date_embauche ASC LIMIT 1;

-- 20 -- Augmenter chaque employé de 100 €
UPDATE employes SET salaire=salaire+100;

-- 21 -- Supprimer les employés du service secrétariat
DELETE FROM employes WHERE service='secretariat';