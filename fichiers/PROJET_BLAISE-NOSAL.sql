-- Maxime BLAISE
-- Antoine NOSAL

PRAGMA foreign_keys = ON;

-- Question 1
CREATE TABLE Boutique(
	idB INTEGER PRIMARY KEY AUTOINCREMENT,
	nomBoutique VARCHAR2(30),
	mail VARCHAR2(50),
	numero NUMBER(4),
	rue VARCHAR2(50),
	ville VARCHAR2(30),
	CP NUMBER(5),
	idGerant NUMBER(4),
	FOREIGN KEY(idGerant) REFERENCES Personne(idP)
);

CREATE TABLE Personne(
	idP INTEGER PRIMARY KEY AUTOINCREMENT,
	nom VARCHAR2(30) NOT NULL,
	prenom VARCHAR2(30) NOT NULL,
	mail VARCHAR2(50) NOT NULL,
	login VARCHAR2(30) NOT NULL,
	motDePasse VARCHAR2(30)
);

CREATE TABLE Marque(
    idM INTEGER PRIMARY KEY AUTOINCREMENT,
    nomMarque VARCHAR(30)
);

CREATE TABLE Produit(
        idProd INTEGER PRIMARY KEY AUTOINCREMENT,
        libelle VARCHAR2(30),
        idMarque VARCHAR2(30),
        description VARCHAR2(30),
        FOREIGN KEY(idMarque) REFERENCES Marque(idM)
);

CREATE TABLE PrixProduit(
        idProduit NUMBER(4),
        idBoutique NUMBER(4),
        prix NUMBER(5,2),
        FOREIGN KEY(idProduit) REFERENCES Produit(idProd),
        FOREIGN KEY(idBoutique) REFERENCES Boutique(idB)
);

CREATE TABLE Promotion(
        idBoutique NUMBER(4),
        reduction INT,
        PRIMARY KEY(idBoutique)
);

-- Question 2
INSERT INTO `Personne` (`nom`,`prenom`,`mail`,`login`,`motDePasse`) VALUES ("Shad","Dolan","elit.pede.malesuada@tinciduntnequevitae.ca","faucibus.","MNF26RHJ4ZK");
INSERT INTO `Personne` (`nom`,`prenom`,`mail`,`login`,`motDePasse`) VALUES ("Cameran","Nita","ante@miacmattis.co.uk","tortor","FAS26ZKP3UV");
INSERT INTO `Personne` (`nom`,`prenom`,`mail`,`login`,`motDePasse`) VALUES ("Maisie","Myra","eu.lacus@lectuspedeet.com","pede,","HHU28QNE1ZI");
INSERT INTO `Personne` (`nom`,`prenom`,`mail`,`login`,`motDePasse`) VALUES ("Francis","Denton","urna.justo.faucibus@magnaSed.net","lobortis,","DXI83TER9OQ");
INSERT INTO `Personne` (`nom`,`prenom`,`mail`,`login`,`motDePasse`) VALUES ("Eaton","Debra","viverra.Maecenas@aliquetPhasellus.edu","malesuada","LPE21SGR1PP");
INSERT INTO `Personne` (`nom`,`prenom`,`mail`,`login`,`motDePasse`) VALUES ("Aretha","Joel","fringilla@fringillaest.ca","vulputate,","CTE99WGH2DD");
INSERT INTO `Personne` (`nom`,`prenom`,`mail`,`login`,`motDePasse`) VALUES ("Byron","Alyssa","Mauris.non@laoreet.edu","aliquet,","OCN63REF8NR");
INSERT INTO `Personne` (`nom`,`prenom`,`mail`,`login`,`motDePasse`) VALUES ("Yeo","Brody","eget.tincidunt.dui@utipsumac.ca","netus","FJY48NNG0GE");
INSERT INTO `Personne` (`nom`,`prenom`,`mail`,`login`,`motDePasse`) VALUES ("Jada","August","Duis.volutpat@netus.com","luctus","FWV28KIH1FG");
INSERT INTO `Personne` (`nom`,`prenom`,`mail`,`login`,`motDePasse`) VALUES ("Rama","Shelby","odio.vel.est@dictumaugue.org","pede,","UFA67MVN5KV");
INSERT INTO `Personne` (`nom`,`prenom`,`mail`,`login`,`motDePasse`) VALUES ("Colorado","Deborah","purus.in.molestie@ametconsectetuer.net","urna","CEU45GKC6VM");
INSERT INTO `Personne` (`nom`,`prenom`,`mail`,`login`,`motDePasse`) VALUES ("Maite","Sydnee","arcu.imperdiet@adipiscingfringilla.edu","montes,","FCB85BIB1OR");
INSERT INTO `Personne` (`nom`,`prenom`,`mail`,`login`,`motDePasse`) VALUES ("Kelsey","Dolan","cursus.non@accumsaninterdum.ca","nec","ZKX46CTB0GZ");
INSERT INTO `Personne` (`nom`,`prenom`,`mail`,`login`,`motDePasse`) VALUES ("Armand","Emma","viverra.Donec@tempusrisus.ca","luctus","FJJ87CGU3JR");
INSERT INTO `Personne` (`nom`,`prenom`,`mail`,`login`,`motDePasse`) VALUES ("Sydney","Farrah","nec.luctus.felis@sapienCrasdolor.ca","eu","IEB64NYG9GY");
INSERT INTO `Personne` (`nom`,`prenom`,`mail`,`login`,`motDePasse`) VALUES ("Bianca","Abbot","feugiat@tinciduntaliquam.ca","Quisque","YUY54SER9MS");
INSERT INTO `Personne` (`nom`,`prenom`,`mail`,`login`,`motDePasse`) VALUES ("Lacota","John","diam@eratVivamusnisi.org","vestibulum","EJD01WZL6YR");
INSERT INTO `Personne` (`nom`,`prenom`,`mail`,`login`,`motDePasse`) VALUES ("Joel","Nehru","eget.massa.Suspendisse@anuncIn.net","ligula.","NCO85ZUL8UZ");

INSERT INTO `Boutique` (`nomBoutique`,`mail`,`numero`,`rue`,`ville`,`CP`,`idGerant`) VALUES ("Ut","lobortis@ipsum.edu",75,"ante","aliquam,","86999",4);
INSERT INTO `Boutique` (`nomBoutique`,`mail`,`numero`,`rue`,`ville`,`CP`,`idGerant`) VALUES ("urna.","pharetra@Suspendisseacmetus.edu",85,"et","Cum","49237",8);
INSERT INTO `Boutique` (`nomBoutique`,`mail`,`numero`,`rue`,`ville`,`CP`,`idGerant`) VALUES ("morbi","risus.Morbi.metus@atnisiCum.com",74,"erat","nec,","90132",4);
INSERT INTO `Boutique` (`nomBoutique`,`mail`,`numero`,`rue`,`ville`,`CP`,`idGerant`) VALUES ("ullamcorper","Fusce.fermentum.fermentum@porttitoreros.co.uk",22,"sit","libero","98603",3);
INSERT INTO `Boutique` (`nomBoutique`,`mail`,`numero`,`rue`,`ville`,`CP`,`idGerant`) VALUES ("neque.","aliquet.metus.urna@nunc.edu",7,"nulla","blandit.","29502",5);
INSERT INTO `Boutique` (`nomBoutique`,`mail`,`numero`,`rue`,`ville`,`CP`,`idGerant`) VALUES ("nisl","vitae.aliquam.eros@egestas.edu",84,"lectus","nascetur","05743",2);
INSERT INTO `Boutique` (`nomBoutique`,`mail`,`numero`,`rue`,`ville`,`CP`,`idGerant`) VALUES ("dolor","Mauris@ipsum.com",65,"ac","dictum","03832",4);
INSERT INTO `Boutique` (`nomBoutique`,`mail`,`numero`,`rue`,`ville`,`CP`,`idGerant`) VALUES ("orci,","pede.malesuada.vel@magnaatortor.net",51,"blandit","pede.","37569",4);

INSERT INTO `Marque` (`nomMarque`) VALUES ("libero");
INSERT INTO `Marque` (`nomMarque`) VALUES ("arcu");
INSERT INTO `Marque` (`nomMarque`) VALUES ("cursus");
INSERT INTO `Marque` (`nomMarque`) VALUES ("ligula");
INSERT INTO `Marque` (`nomMarque`) VALUES ("magna");
INSERT INTO `Marque` (`nomMarque`) VALUES ("sed");
INSERT INTO `Marque` (`nomMarque`) VALUES ("diam");
INSERT INTO `Marque` (`nomMarque`) VALUES ("in");
INSERT INTO `Marque` (`nomMarque`) VALUES ("Donec");
INSERT INTO `Marque` (`nomMarque`) VALUES ("consectetuer");

INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("montes,",10,"enim. Curabitur massa. Vestibulum accumsan");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("purus.",7,"urna. Vivamus molestie dapibus ligula.");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("tincidunt",5,"ac libero nec ligula consectetuer");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("Suspendisse",3,"ligula elit, pretium et, rutrum");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("aliquet",7,"consequat enim diam vel arcu.");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("mauris,",3,"et netus et malesuada fames");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("laoreet,",1,"purus, in molestie tortor nibh");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("Aliquam",8,"Donec nibh enim, gravida sit");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("lobortis",10,"ut, pharetra sed, hendrerit a,");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("et",5,"Aliquam vulputate ullamcorper magna. Sed");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("dui.",2,"quis arcu vel quam dignissim");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("vel",7,"venenatis lacus. Etiam bibendum fermentum");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("Suspendisse",10,"Nam consequat dolor vitae dolor.");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("id,",2,"ullamcorper, nisl arcu iaculis enim,");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("Cum",10,"In ornare sagittis felis. Donec");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("dui",9,"ullamcorper. Duis cursus, diam at");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("felis",2,"elit. Curabitur sed tortor. Integer");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("hendrerit",10,"nulla ante, iaculis nec, eleifend");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("montes,",10,"ante. Nunc mauris sapien, cursus");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("cursus",3,"nisi. Aenean eget metus. In");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("accumsan",10,"ac sem ut dolor dapibus");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("risus.",7,"Nam tempor diam dictum sapien.");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("magna.",2,"odio a purus. Duis elementum,");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("turpis",9,"Phasellus libero mauris, aliquam eu,");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("sit",3,"Vivamus nibh dolor, nonummy ac,");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("mi.",9,"risus, at fringilla purus mauris");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("sem.",2,"Proin velit. Sed malesuada augue");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("euismod",8,"Sed nulla ante, iaculis nec,");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("erat,",10,"libero. Donec consectetuer mauris id");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("nonummy.",10,"felis ullamcorper viverra. Maecenas iaculis");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("felis,",4,"Etiam bibendum fermentum metus. Aenean");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("Fusce",10,"erat, in consectetuer ipsum nunc");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("posuere",9,"lacus. Quisque imperdiet, erat nonummy");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("et",10,"sollicitudin orci sem eget massa.");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("erat",7,"dis parturient montes, nascetur ridiculus");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("dis",3,"pharetra, felis eget varius ultrices,");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("ac",3,"et arcu imperdiet ullamcorper. Duis");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("tempor",8,"feugiat. Sed nec metus facilisis");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("convallis",1,"ipsum leo elementum sem, vitae");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("Proin",5,"In ornare sagittis felis. Donec");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("lacinia",8,"libero at auctor ullamcorper, nisl");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("magna.",6,"Nam nulla magna, malesuada vel,");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("purus,",2,"mi fringilla mi lacinia mattis.");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("amet",3,"turpis. Nulla aliquet. Proin velit.");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("nisi.",2,"nunc, ullamcorper eu, euismod ac,");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("netus",9,"Nulla dignissim. Maecenas ornare egestas");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("orci",2,"massa. Suspendisse eleifend. Cras sed");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("non,",5,"luctus, ipsum leo elementum sem,");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("mauris.",5,"lorem fringilla ornare placerat, orci");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("at,",8,"nec ante. Maecenas mi felis,");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("sem",2,"semper pretium neque. Morbi quis");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("viverra.",9,"orci, in consequat enim diam");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("amet,",4,"feugiat non, lobortis quis, pede.");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("rutrum",2,"habitant morbi tristique senectus et");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("Nullam",6,"ligula. Aenean gravida nunc sed");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("elementum",10,"quam vel sapien imperdiet ornare.");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("Duis",7,"vulputate dui, nec tempus mauris");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("Toto", null, "oianef foejov, oif");
INSERT INTO `Produit` (`libelle`,`idMarque`,`description`) VALUES ("Fourchette",5,"aoine foina eifan, aerin");

INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (47,4,558);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (54,5,462);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (3,2,484);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (42,8,14);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (44,2,301);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (13,8,563);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (14,1,932);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (30,8,957);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (2,4,865);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (26,3,622);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (19,8,170);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (39,6,931);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (1,8,87);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (56,6,391);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (44,2,224);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (24,6,576);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (24,3,162);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (12,7,256);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (54,4,550);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (21,7,543);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (29,6,829);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (53,1,123);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (11,4,377);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (39,7,786);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (27,8,128);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (51,5,648);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (41,5,816);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (47,1,90);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (6,5,917);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (32,7,948);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (1,5,637);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (46,8,543);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (2,2,390);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (1,2,670);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (56,1,990);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (34,6,350);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (28,3,392);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (54,6,747);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (12,6,863);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (11,4,42);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (41,6,575);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (55,3,761);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (48,3,712);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (32,7,599);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (47,7,801);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (20,2,61);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (22,2,888);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (41,3,52);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (57,7,822);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (45,3,243);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (33,2,232);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (3,6,777);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (41,4,714);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (49,4,490);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (56,4,30);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (50,1,785);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (50,4,910);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (14,2,391);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (33,2,114);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (9,7,525);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (24,7,934);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (56,1,336);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (50,2,119);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (43,5,855);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (55,2,355);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (5,5,418);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (46,3,541);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (50,1,328);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (46,1,765);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (39,5,943);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (46,2,238);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (18,4,449);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (3,5,211);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (40,2,371);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (24,8,311);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (55,5,598);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (51,6,428);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (51,4,705);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (16,6,781);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (9,2,286);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (5,6,658);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (1,3,465);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (26,1,525);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (48,7,195);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (6,3,365);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (31,2,201);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (44,1,208);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (11,4,815);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (13,6,907);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (48,3,210);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (8,2,370);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (10,7,669);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (56,7,880);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (50,2,781);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (41,5,603);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (30,3,771);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (13,5,362);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (37,5,80);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (57,3,362);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (21,3,803);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (59,1,101);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (59,2,102);
INSERT INTO `PrixProduit` (`idProduit`,`idBoutique`,`prix`) VALUES (59,3,103);

INSERT INTO `Promotion` (`idBoutique`,`reduction`) VALUES (6,9);
INSERT INTO `Promotion` (`idBoutique`,`reduction`) VALUES (3,8);
INSERT INTO `Promotion` (`idBoutique`,`reduction`) VALUES (7,3);
INSERT INTO `Promotion` (`idBoutique`,`reduction`) VALUES (5,9);
INSERT INTO `Promotion` (`idBoutique`,`reduction`) VALUES (2,8);
INSERT INTO `Promotion` (`idBoutique`,`reduction`) VALUES (8,4);
INSERT INTO `Promotion` (`idBoutique`,`reduction`) VALUES (4,5);

-- Question 3
SELECT DISTINCT nomBoutique 
FROM Boutique;

-- Question 4
SELECT mail 
FROM Personne 
WHERE nom='Dupont'
AND prenom='Francois';

-- Question 5
SELECT count(idProd)
FROM Produit;

-- Question 6
SELECT libelle, nomMarque
FROM Produit INNER JOIN Marque
ON Produit.idMarque = Marque.idM;

-- Question 7
SELECT libelle, nomMarque
FROM Produit LEFT JOIN Marque
ON Produit.idMarque = Marque.idM;

-- Question 8
SELECT libelle, nomMarque
FROM ((Boutique INNER JOIN PrixProduit ON Boutique.idB = PrixProduit.idBoutique)
		INNER JOIN Produit ON PrixProduit.idProduit = Produit.idProd)
		INNER JOIN Marque ON Produit.idMarque = Marque.idM
WHERE nomBoutique = 'Chez Lulu'
ORDER BY libelle;

-- Question 9
SELECT nom, prenom 
FROM Personne 
WHERE idP IN (SELECT idGerant FROM Boutique);

-- Question 10
CREATE VIEW gérant AS 
SELECT idP, nom, prenom 
FROM Personne 
WHERE idP IN (SELECT idGerant FROM Boutique);

-- Question 11
SELECT nom, prenom, Count(idB) 
FROM gérant 
INNER JOIN Boutique ON gérant.idP = Boutique.idGerant 
GROUP BY nom, prenom;

-- Question 12
SELECT nom, prenom, Count(idB) 
FROM gérant 
INNER JOIN Boutique ON gérant.idP = Boutique.idGerant 
GROUP BY nom, prenom 
HAVING Count(idB) > 2 AND Count(idB) < 3;

-- Question 13
SELECT nomBoutique, prix, reduction, prix - reduction / 100 * prix AS prixApresReduction
FROM Produit
INNER JOIN PrixProduit ON Produit.idProd = PrixProduit.idProduit
INNER JOIN Boutique ON PrixProduit.idBoutique = Boutique.idB
INNER JOIN Promotion ON Boutique.idB = Promotion.idBoutique
WHERE libelle="fourchette";

-- Question 14
SELECT idP,nom,prenom 
FROM Personne 
EXCEPT 
SELECT idP,nom,prenom 
FROM gérant;

-- Question 15
SELECT idP,nom,prenom 
FROM Personne 
WHERE idP NOT IN (SELECT idP 
                    FROM gérant);

-- Question 16
SELECT mail 
FROM Boutique 
UNION 
SELECT mail 
FROM Personne;

-- Question 17
SELECT * 
FROM Boutique INNER JOIN Promotion ON Boutique.idB = Promotion.idBoutique 
GROUP BY idB 
HAVING reduction = MAX(reduction);

-- Question 18
SELECT idBoutique, idProduit
FROM PrixProduit
GROUP BY idBoutique, idProduit
HAVING idProduit IN ( SELECT idProd
FROM ((Boutique INNER JOIN PrixProduit ON Boutique.idB = PrixProduit.idBoutique)
INNER JOIN Produit ON PrixProduit.idProduit = Produit.idProd)
INNER JOIN Personne ON Boutique.idGerant = Personne.idP
WHERE prenom = "John"
AND nom = "Smith" );

-- COMMENTAIRES QUESTION 18
--
-- Etape 1 : Sélectionner tous les idProduits de la boutique de John Smith
--     SELECT idProd
--     FROM ((Boutique INNER JOIN PrixProduit ON Boutique.idB = PrixProduit.idBoutique)
--     INNER JOIN Produit ON PrixProduit.idProduit = Produit.idProd)
--     INNER JOIN Personne ON Boutique.idGerant = Personne.idP
--     WHERE prenom = "John"
--     AND nom = "Smith";
--
-- Etape 2 : Sélectionner par boutique, tous les idProduit
--     SELECT idBoutique, idProduit
--     FROM PrixProduit
--     GROUP BY idBoutique, idProduit;
--
-- Etape 3 : On combine les deux premières étapes.
--           On sélectionne donc les boutiques qui ont un idProduit au moins qui est dans (IN) la liste des idProduit de la boutique de John Smith
--     SELECT idBoutique, idProduit
--     FROM PrixProduit
--     GROUP BY idBoutique, idProduit
--     HAVING idProduit IN ( SELECT idProd
--     FROM ((Boutique INNER JOIN PrixProduit ON Boutique.idB = PrixProduit.idBoutique)
--     INNER JOIN Produit ON PrixProduit.idProduit = Produit.idProd)
--     INNER JOIN Personne ON Boutique.idGerant = Personne.idP
--     WHERE prenom = "John"
--     AND nom = "Smith" );

-- Question 19
SELECT idMarque, idBoutique, Count(idProd)
FROM (Boutique INNER JOIN PrixProduit ON Boutique.idB = PrixProduit.idBoutique)
INNER JOIN Produit ON PrixProduit.idProduit = Produit.idProd
GROUP BY idMarque, idBoutique
HAVING Count(idProd) = ( SELECT DISTINCT Count(idProd)
FROM Marque INNER JOIN Produit ON Marque.idM = Produit.idMarque
GROUP BY idM );

-- COMMENTAIRES QUESTIONS 19
--
-- Etape 1 : Sélectionner par marque, le nombre de produits vendus
--     SELECT DISTINCT idM, Count(idProd)
--     FROM Marque INNER JOIN Produit ON Marque.idM = Produit.idMarque
--     GROUP BY idM;
--
-- Etape 2 : Sélectionner par marque et par boutique, le nombre de produits vendus
--     SELECT idMarque, idBoutique, Count(idProd)
--     FROM (Boutique INNER JOIN PrixProduit ON Boutique.idB = PrixProduit.idBoutique)
--     INNER JOIN Produit ON PrixProduit.idProduit = Produit.idProd
--     GROUP BY idMarque, idBoutique;

-- Etape 3 : On combine les deux premières étapes.
--           On sélectionne donc les marques qui sont vendues en totalité par au moins une boutique,
--           en comparant les deux nombres obtenus dans les étapes précédentes
--     SELECT idMarque, idBoutique, Count(idProd)
--     FROM (Boutique INNER JOIN PrixProduit ON Boutique.idB = PrixProduit.idBoutique)
--     INNER JOIN Produit ON PrixProduit.idProduit = Produit.idProd
--     GROUP BY idMarque, idBoutique
--     HAVING Count(idProd) = ( SELECT DISTINCT Count(idProd)
--     FROM Marque INNER JOIN Produit ON Marque.idM = Produit.idMarque
--     GROUP BY idM );