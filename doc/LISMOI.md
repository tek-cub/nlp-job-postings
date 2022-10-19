## Nouvelle
- C'est une traduction française du [README](https://github.com/tek-cub/nlp_job-postings#readme) oficiel anglais.
- Afin d'actualiser commodément le dépôt, le script de Bash *git-flow.sh* fut ajouté. 

## Projet : Traitement du Langage Naturel (TLN) des Données sur les Offres d’Emploi
C'est une implementation du Manning liveProject [Decoding Data Science Job Postings to Improve Your Resume](https://www.manning.com/liveproject/decoding-data-science-job-postings-to-improve-your-resume). L'objectif est de rechercher des informations sur le marché de l'emploi de la science des données, à partir des avis d'emplois obtenus du web scraping (aussi quant à le CV d'un utilisateur). Donc les demandeurs d’emploi pourraient utiliser cette information pour améliorer ses chances de succès.

Un aperçu de la portée et des tâches de ce projet :
- traitant des données avec Pandas ; TLN et apprentissage automatique avec Scikit-learn
- statistiques pour mieux comprendre les problèmes, faire décisions, et interpréter les résultats
- extraire, transformer, charger le dataset d’annonces d’emploi à partir de fichiers HTML (grattages d’Internet)
- vectorisant du texte (un CV d’un utilisateur et avis d’emploi), au moyen le word embedding TF-IDF 
- pointant les similarités (cosinus) du CV d’un utilisateur avec les entrées dans le dataset
- extraction des caractéristiques des données choisies en utilisant une décomposition en valeurs singulières : réduisant de leur dimensionnement
- regroupant des k-moyennes des attributs extraits : permettant l’analyse de différents types d’exigences de travail
- en visualisant le contenu des regroupements, c’est-à-dire les mots les plus fréquents : pour représenter les articles souhaités par les employeurs 
- pointant les similarités entre le CV d’un utilisateur et un regroupement

Les techniques principales utilisées sont les comparaisons de similarité cosinus et un regroupement de k-moyennes. Inversement les techniques de ce projet peuvent être utilisées des perspectives de ceux qui recrutent, qui veulent filtrer les candidats vers un niveau gérable, ou pour les regrouper basé sur leur similarités pour mieux comprendre les candidats.

Manning fournit l’échantillon des données (avis d’emploi) avec ne pas détailler sur sa collection. Alors il n’y a pas de présomption de sa fidélité à une population (qui n’a pas été clairement définie) : cela ne faisait pas partie du projet. Du point du vue du projet, il est présumé que les données ont été correctement échantillonnées d’une population bien définie.

## Instructions

### 1. Environnement
Le projet fut construit avec Python 3.7, et la [Distribución de Anaconda Python](https://www.anaconda.com/distribution/#download-section) est recommandée. Après avoir installé Anaconda, en exécutant `conda env create -f environment.yml` créera un environnement appelé *nlp_job-postings*. Activer et désactiver le environnement avec `conda activate nlp_job-postings` et `conda deactivate` respectivement. Si l'environnement est activé, Jupyter Notebook exécuterá dans ce terminal-là par `jupyter notebook`.

### 2. Données 
*data/* a ce qu'il faut pour exécuter les cahiers comme indiqué ci-dessous dans la section Code, mais *data/html_jop_postings.zip* doit être décompressé à l'avance. Le document de CV et les sorties des données du code sont stockés dans ce dossier.

### 3. Configuration
*config.json* contient des paramètres qui peuvent être modifiés pour altérer le comportement du projet, à savoir la plage de n-gram pour les documents et le nombre de regroupements utilisées par l’algorithme de k-moyennes. Cependant la valeur de *k_hyperparam* est assignée dans le troisième carnet *3_clustering.ipynb*.

### 4. Code
Les cahiers et leurs cellules sont censés être exécutés séquentiellement (comme indiqué par les préfixes de fichier, 1-4). Les commentaires dans le code servent principalement pour dire explicitement le flux des tâches ; elles sont également utilisées pour documenter certaines des méthodes et réflexions de l’analyse. L’objectif de chaque cahier est déclaré au début du fichier.
