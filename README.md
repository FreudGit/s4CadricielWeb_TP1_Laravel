Cadriciel Web  - 582-41B-MA  

TP1 : Laravel  - CRUD

par:  François Hébert (e2296133) 


---
## DOCUMENTATION

RÉFÉRENCES:

- LIEN VERS LE GITHUB: **[GIT DU PROJET](https://github.com/fhmaisonneuve/s4CadricielWeb_TP1_Laravel)**
- LIEN VERS LE PROJET(WEBDEV): **[https://e2296133.webdev.cmaisonneuve.qc.ca/cadricielwebtp1/](https://e2296133.webdev.cmaisonneuve.qc.ca/cadricielwebtp1/)** 


 ---  

## REQUIS DÉMANDÉS


- [x]  1. En utilisant les lignes de commande, créer un nouveau projet Laravel nommée Maisonneuve{votre matricule} (1 pt)
```
composer create-project --prefer-dist laravel/laravel Maisonneuvee2296133
```
- [x] 2. En utilisant les lignes de commande, créer les modèles (1 pts)
```
php artisan make:model Etudiant
php artisan make:model Ville
```

- [x] 3. En utilisant les lignes de commande, créer les tables(2pts)
```
php artisan make:migration create_villes_table
  - (updater le schema dans le php)
php artisan make:migration create_etudiants_table
  - (updater le schema dans le php)

php artisan migrate
```


- [x] 4. En utilisant les lignes de commande, saisir 15 nouvelles villes(1pts)
```


php artisan make:factory VilleFactory
  - (updater le schema dans le VilleFactory.php)

php artisan tinker
>\App\Models\Ville::factory()->times(15)->create();

```
- [x] 5. En utilisant les lignes de commande, saisir 100 nouveaux étudient(1pts)
```
php artisan make:factory EtudiantFactory
  - (updater le schema dans le EtudiantFactory.php)
php artisan tinker
>factory(App\Etudiant::class, 100)->create();
```
- [x] *Pour les questions 4 et 5, effectuez une recherche des propriétés de "Factory" pour remplir des valeurs telles que des noms, des adresses, des téléphones, etc. (pas de phrases ou de texte aléatoires).*
- [x] 6. En utilisant les lignes de commande, créer les contrôleurs(1pts)
```
 php artisan make:controller EtudiantController -m Etudiant 

```

- [x] 7. Créez votre layout.blade avec vous CSS, vous devez importer bootstrap (ou
du CSS personnalise) et le concevoir selon vos préférences. (1 pts)
- [x] 8. Travailler avec bootstrap (ou du CSS personnalise) pour respecter les
concepts d'ergonomie, soyez créatif (1pts).
- [x] 9. Créer un contrôleur “index” et une vue, pour afficher tous les étudiants, avec
un lien pour sélectionner l'étudiant et le mettre à jour. (2 pts)
Conception et programmation de sites Web (NWE.0F – 2020) 582-41B-MA – Cadriciel Web
- [x] 10.Créer un contrôleur “create” et une vue, pour saisir un nouvel étudiant. Le formulaire doit avoir un champ “select” avec toutes les villes qui viennent de la base de données. (2 pts)
- [x] 11.  Créer un contrôleur “show” et une vue, pour afficher un étudiant sélectionné. (2 pts)
- [x] 12.Créer un contrôleur “edit” et une vue, pour afficher un étudiant sélectionné dans un formulaire et le mettre à jour. (2 pts)
- [x] 13.Créer un contrôleur “destroy” pour supprimer un étudiant sélectionné. (1 pt) - 
- [x] 14.Publier votre projet dans GitHub (publique) et envoyer le lien dans la
documentation. (1 pts)

- LIEN VERS LE GITHUB: **[GIT DU PROJET](https://github.com/fhmaisonneuve/s4CadricielWeb_TP1_Laravel)**
- LIEN VERS LE PROJET(WEBDEV): **[https://e2296133.webdev.cmaisonneuve.qc.ca/cadricielwebtp1/](https://e2296133.webdev.cmaisonneuve.qc.ca/cadricielwebtp1/)** 
   
- [x] 15.Enregistrez le projet avec une extension ZIP et ajouter la documentation dans
la racine (1pt)