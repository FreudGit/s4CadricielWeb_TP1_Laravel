# Télécharger le template Laravel projet vide sur LEA
Il faut partir de ce template pour avoir la version de Laravel qui est compatible avec la version php de webdev.
 
# Copier coller tous les fichiers de notre projet dans ce template Laravel
Ne pas oubliez tous les fichiers qu'on a pu modifier :
- controlleurs
- modèles
- views
- Route
- database/factory
- database/migrations
- AppServiceProvider.php
 
# Ajout du .htaccess
Ajout à la racine du .htaccess que Marcos nous avait donné.
 
# Modif de l'APP_NAME et des login de la BD dans .env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=*num-etudiant*
DB_USERNAME=*num-etudiant*
DB_PASSWORD=*password-my.cnf*
 
# Transfert du projet vers webdev
Créer un nouveau dossier sur webdev/www et transférer tout le projet vers ce dossier via Filezilla
 
# Créer les tables à partir de Laravel
1. Se connecter à webdev via le terminal
`ssh *num-etudiant*@webdev.cmaisonneuve.qc.ca`
 
2. Naviguer vers le projet
cd www/*nom-du-projet*
 
3. php artisan migrate
 
# Générer les données
*Pas réussi à faire fonctionner php artisan tinker*
Mais on peut exporter les données sql de notre bd locale et les ajouter dans le phpmyadmin de webdev (les villes d'abord!)