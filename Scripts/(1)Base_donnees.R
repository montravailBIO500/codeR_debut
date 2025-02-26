###CREATION DE LA BASE DE DONNEES###

#Lecture fichier csv equipe 1 (3LCW)
LCW_collaborations1 <- read.csv(file = "3LCW_collaborations.csv", sep = ",", fileEncoding = "UTF-8-BOM")
LCW_cours1 <- read.csv(file="3LCW_cours.csv", sep = ",", fileEncoding = "UTF-8-BOM")
LCW_noeuds1 <- read.csv(file="3LCW_noeuds.csv", sep = ",", fileEncoding = "UTF-8-BOM", stringsAsFactors = FALSE)

#Lecture fichier csv equipe 2 (EGM)
EquipeEGM_collaborations1 <- read.csv(file = "EquipeEGM_collaborations.csv", sep = ",", fileEncoding = "UTF-8-BOM")
EquipeEGM_cours1 <- read.csv(file="EquipeEGM_cours.csv", sep = ",", fileEncoding = "UTF-8-BOM")
EquipeEGM_noeuds1 <- read.csv(file="EquipeEGM_noeuds.csv", sep = ",", fileEncoding = "UTF-8-BOM", stringsAsFactors = FALSE)

#Lecture fichier csv equipe 3 (Spikee)
Spikee_collaborations1 <- read.csv(file = "Spikee_collaborations.csv", sep = ";", fileEncoding = "UTF-8-BOM")
Spikee_cours1 <- read.csv(file="Spikee_cours.csv", sep = ";", fileEncoding = "UTF-8-BOM")
Spikee_noeuds1 <- read.csv(file="Spikee_noeuds.csv", sep = ";", fileEncoding = "UTF-8-BOM", stringsAsFactors = FALSE)

#Lecture fichier csv equipe 4 (Supernanas)
Supernanas_collaborations1 <- read.csv(file = "Supernanas_collaborations.csv", sep = ";", fileEncoding = "UTF-8-BOM")
Supernanas_cours1 <- read.csv(file="Supernanas_cours.csv", sep = ";", fileEncoding = "UTF-8-BOM")
Supernanas_noeuds1 <- read.csv(file="Supernanas_noeuds.csv", sep = ";", fileEncoding = "UTF-8-BOM", stringsAsFactors = FALSE)

#Lecture fichier csv equipe 5 (Teamdefeu)
Teamdefeu2_collaborations1 <- read.csv(file = "Teamdefeu2_collaborations.csv", sep = ";", fileEncoding = "UTF-8-BOM")
Teamdefeu2_cours1 <- read.csv(file="Teamdefeu2_cours.csv", sep = ";", fileEncoding = "UTF-8-BOM")
Teamdefeu2_noeuds1 <- read.csv(file="Teamdefeu2_noeuds.csv", sep = ";", fileEncoding = "UTF-8-BOM", stringsAsFactors = FALSE)

#LES NOMS DE CHACUNE DES COLONNES DOIVENT �TRE IDENTIQUES DANS CHACUNE DES TABLES POUR CHAQUE EQUIPE AFIN D'UTILISER LA FCT. RBIND
#Uniformiser le noms des colonnes pour l'ensemble des bases de donnees de chaque equipe = collaborations
colnames(Supernanas_collaborations1) <- c("etudiant1", "etudiant2", "sigle", "session")
colnames(EquipeEGM_collaborations1) <- c("etudiant1", "etudiant2", "sigle", "session")
colnames(Spikee_collaborations1 ) <- c("etudiant1", "etudiant2", "sigle", "session")
colnames(Teamdefeu2_collaborations1) <- c("etudiant1", "etudiant2", "sigle", "session")
colnames(LCW_collaborations1) <- c("etudiant1", "etudiant2", "sigle", "session")

#Uniformiser le noms des colonnes pour l'ensemble des bases de donnees de chaque �quipe = cours
colnames(Supernanas_cours1) <- c("sigle", "credits", "obligatoire", "laboratoire","distance", "groupes", "libre")
colnames(EquipeEGM_cours1) <- c("sigle", "credits", "obligatoire", "laboratoire","distance", "groupes", "libre")
colnames(Spikee_cours1 ) <- c("sigle", "credits", "obligatoire", "laboratoire","distance", "groupes", "libre")
colnames(Teamdefeu2_cours1) <- c("sigle", "credits", "obligatoire", "laboratoire","distance", "groupes", "libre")
colnames(LCW_cours1) <- c("sigle", "credits", "obligatoire", "laboratoire","distance", "groupes", "libre") 

#JOINDRE L'ENSEMBLE DES TABLES 
#Joindre les tables collaborations
bd_collaborations <- rbind(LCW_collaborations1,EquipeEGM_collaborations1,Spikee_collaborations1,Supernanas_collaborations1,Teamdefeu2_collaborations1)

#Joindre les tables cours
bd_cours <- rbind(LCW_cours1,EquipeEGM_cours1,Spikee_cours1,Supernanas_cours1,Teamdefeu2_cours1)

#Joindre les tables noeuds
bd_noeuds <- rbind(LCW_noeuds1,EquipeEGM_noeuds1,Spikee_noeuds1,Supernanas_noeuds1,Teamdefeu2_noeuds1)
