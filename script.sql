DROP DATABASE IF EXISTS artUniverse;
CREATE DATABASE IF NOT EXISTS artUniverse;
USE artUniverse;

CREATE  TABLE user(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    # Data generator doesn't support hash generation so the values are 11 chars long, SHA256 would be CHAR(64).
    password CHAR(11) NOT NULL,
    pan VARCHAR(255),
    cvv CHAR(3)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

CREATE TABLE image(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    user_id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    price INT NOT NULL DEFAULT 1,
    description VARCHAR(255),
    is_public TINYINT DEFAULT 1,
    path VARCHAR(255) NOT NULL,
    upload_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

CREATE TABLE category(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    name VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

CREATE TABLE image_category(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    image_id INT NOT NULL,
    category_id INT NOT NULL,
    FOREIGN KEY (image_id) REFERENCES image(id)
    ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES category(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

CREATE TABLE preference(
    user_id INT NOT NULL,
    dark_mode TINYINT DEFAULT 0,
    grid_view TINYINT DEFAULT 0,
    FOREIGN KEY (user_id) REFERENCES user(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

CREATE TABLE `order`(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    user_id INT NOT NULL,
    date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES user(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

CREATE TABLE order_image(
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    order_id INT NOT NULL,
    image_id INT NOT NULL,
    FOREIGN KEY (image_id) REFERENCES image(id)
    ON DELETE CASCADE,
    FOREIGN KEY (order_id) REFERENCES `order`(id)
    ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4 COLLATE=UTF8MB4_UNICODE_CI;

# generatedata.com
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (1,"Grace","eros.non.enim@Donec.edu","AUG09BHF1EE","4539726700670","744");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (2,"Shelly","sagittis.semper@ornarelectusante.com","NNB89ZBQ4SO","4916 7331 1438 7195","957");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (3,"Mohammad","egestas.nunc.sed@magnaatortor.ca","LMZ21OVU2UM","4024007199306","893");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (4,"Seth","Suspendisse.dui.Fusce@vestibulumMaurismagna.edu","ZXJ49IZJ6CY","4929 0986 1804 1002","524");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (5,"Nicole","faucibus@utaliquam.edu","QBO91YWT5AW","4916653557317","569");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (6,"Palmer","Proin@Proin.org","FPB99XTY5AV","4342 9476 0916 9009","174");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (7,"Tashya","nascetur.ridiculus@ipsum.co.uk","CGJ58QMB3OL","4716116907376","198");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (8,"Ronan","Aliquam@dapibus.net","FLI33IGF4GO","4916 2910 1459 2075","979");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (9,"Dustin","risus@arcuCurabiturut.edu","SIH08LYN8VE","4916176469149","798");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (10,"Orli","quam.vel@adipiscinglacusUt.com","RNK42CTG2CO","4556168112321","370");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (11,"Kareem","Cum.sociis@Praesentinterdumligula.org","LQF01ZEF6IH","4929789121205","899");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (12,"Cassidy","velit.Cras.lorem@ultricesposuerecubilia.ca","KHN24WBK8ZE","4556 2626 7287 3995","277");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (13,"Emerson","eros.Proin@Aenean.net","FCD16OPZ5GA","4485 3825 5794 8765","128");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (14,"Kaden","vestibulum@pede.net","BBE42OAC7PJ","4532895521373","802");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (15,"Quamar","vestibulum.Mauris.magna@Suspendissenonleo.co.uk","HBR80SXS5LH","4944863263203","773");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (16,"Mara","vel@eratEtiam.co.uk","YYG17HCZ2UM","4539 4156 3417 9149","175");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (17,"Uma","Etiam@interdumCurabitur.com","TKW55DJS6OP","4532086875455","343");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (18,"Aphrodite","vulputate.lacus.Cras@ametconsectetuer.net","FQX88JWP7ZZ","4843194925755","964");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (19,"Octavia","Proin.velit.Sed@elementumdui.com","XUY72HVQ8TA","4929847804024","444");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (20,"Macon","Curabitur.egestas@interdumCurabitur.ca","PTB15RGC4QL","4716 3810 1275 5584","545");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (21,"Maris","vitae.diam@tinciduntpedeac.net","RII72QPA4DD","4929455678587","665");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (22,"Avye","sagittis.lobortis.mauris@lectus.com","WBL54HKV9EI","4916229243426","638");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (23,"Dylan","risus.Nunc@semegestas.org","ZPX83ESI3AF","4929506238324","740");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (24,"Brendan","non.massa.non@egestas.co.uk","GZH66WYL7EL","4916 2788 9209 8507","285");
INSERT INTO user (id,username,email,password,pan,cvv) VALUES (25,"Reese","enim.nec@metusInnec.org","NGO46ZBN9NH","4024 0071 4760 9514","505");

INSERT INTO image (id,user_id,name,price,description,path) VALUES (1,11,"orci",9,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (2,4,"mi",2,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (3,11,"Donec",5,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (4,8,"ante.",3,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (5,10,"primis",9,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (6,22,"non",4,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (7,21,"arcu",6,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (8,2,"dignissim",6,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (9,23,"orci.",10,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (10,4,"Donec",4,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (11,5,"Cum",4,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (12,21,"elementum,",9,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (13,5,"odio",1,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (14,10,"nunc",2,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (15,16,"et",5,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (16,22,"vitae,",10,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (17,3,"per",4,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (18,3,"vel",8,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (19,17,"tortor",2,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (20,22,"Aenean",2,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (21,21,"Nulla",6,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (22,9,"facilisis",8,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (23,12,"luctus",1,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (24,9,"Lorem",1,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (25,3,"rutrum",6,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (26,6,"sem,",8,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (27,12,"Vivamus",7,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (28,12,"lobortis",7,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (29,2,"eu",3,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (30,21,"rhoncus.",2,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (31,9,"eu",6,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (32,16,"taciti",2,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (33,19,"Suspendisse",10,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (34,8,"augue.",7,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (35,25,"urna.",10,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (36,13,"et",8,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (37,16,"laoreet",5,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (38,20,"interdum",6,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (39,24,"interdum",3,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (40,25,"libero.",6,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (41,22,"aliquet",4,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (42,11,"molestie",1,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (43,2,"magnis",9,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (44,5,"tellus",7,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (45,20,"neque",10,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (46,6,"Nulla",1,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (47,8,"vehicula",7,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (48,10,"dignissim",8,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (49,22,"placerat,",3,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (50,10,"Morbi",7,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (51,16,"elit",4,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (52,22,"et",2,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (53,22,"Morbi",1,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (54,2,"aliquet,",5,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (55,17,"dictum",4,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (56,15,"accumsan",9,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (57,23,"a",3,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (58,19,"porttitor",3,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (59,14,"orci.",3,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (60,7,"Proin",2,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (61,1,"blandit",8,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (62,7,"Lorem",9,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (63,20,"placerat.",4,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (64,6,"eu,",1,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (65,25,"a,",8,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (66,19,"Proin",8,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (67,18,"nec",10,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (68,25,"sit",5,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (69,14,"aliquet",4,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (70,20,"libero",6,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (71,3,"aliquet.",2,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (72,20,"Cras",7,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (73,8,"vel",10,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (74,13,"Aenean",8,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (75,24,"Morbi",4,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (76,10,"sem",10,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (77,24,"suscipit",10,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (78,3,"quis",7,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (79,23,"Phasellus",7,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (80,13,"Mauris",6,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (81,12,"augue",1,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (82,19,"enim.",9,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (83,23,"semper.",1,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (84,18,"et,",8,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (85,6,"Maecenas",3,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (86,11,"in",4,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (87,11,"massa.",5,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (88,9,"ipsum",1,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (89,16,"Vivamus",6,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (90,12,"metus.",7,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (91,19,"nunc",6,"Lorem","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (92,6,"enim.",7,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (93,19,"purus,",6,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (94,19,"massa.",7,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (95,22,"Morbi",2,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (96,11,"adipiscing",6,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (97,7,"orci",7,"Lorem ipsum dolor","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (98,1,"lorem",2,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (99,9,"arcu",9,"Lorem ipsum","path/to/image.png");
INSERT INTO image (id,user_id,name,price,description,path) VALUES (100,17,"dignissim",8,"Lorem ipsum dolor","path/to/image.png");

INSERT INTO category (id, name) VALUES (1, "digital");
INSERT INTO category (id, name) VALUES (2, "minimalism");
INSERT INTO category (id, name) VALUES (3, "technology");
INSERT INTO category (id, name) VALUES (4, "background");
INSERT INTO category (id, name) VALUES (5, "landscape");
INSERT INTO category (id, name) VALUES (6, "vehicles");
INSERT INTO category (id, name) VALUES (7, "nature");
INSERT INTO category (id, name) VALUES (8, "food");
INSERT INTO category (id, name) VALUES (9, "miscellaneous");
INSERT INTO category (id, name) VALUES (10, "art");
INSERT INTO category (id, name) VALUES (11, "design");
INSERT INTO category (id, name) VALUES (12, "entertainment");
INSERT INTO category (id, name) VALUES (13, "2d");
INSERT INTO category (id, name) VALUES (14, "3d");
INSERT INTO category (id, name) VALUES (15, "abstract");
INSERT INTO category (id, name) VALUES (16, "concept");
INSERT INTO category (id, name) VALUES (17, "architectural");
INSERT INTO category (id, name) VALUES (18, "visualization");
INSERT INTO category (id, name) VALUES (19, "data");
INSERT INTO category (id, name) VALUES (20, "props");
INSERT INTO category (id, name) VALUES (21, "technical");
INSERT INTO category (id, name) VALUES (22, "anatomy");
INSERT INTO category (id, name) VALUES (23, "wildlife");
INSERT INTO category (id, name) VALUES (24, "illustration");
INSERT INTO category (id, name) VALUES (25, "fantasy");

INSERT INTO image_category (id,image_id,category_id) VALUES (1,56,22);
INSERT INTO image_category (id,image_id,category_id) VALUES (2,1,18);
INSERT INTO image_category (id,image_id,category_id) VALUES (3,8,2);
INSERT INTO image_category (id,image_id,category_id) VALUES (4,75,17);
INSERT INTO image_category (id,image_id,category_id) VALUES (5,47,21);
INSERT INTO image_category (id,image_id,category_id) VALUES (6,85,11);
INSERT INTO image_category (id,image_id,category_id) VALUES (7,36,3);
INSERT INTO image_category (id,image_id,category_id) VALUES (8,97,3);
INSERT INTO image_category (id,image_id,category_id) VALUES (9,8,13);
INSERT INTO image_category (id,image_id,category_id) VALUES (10,12,11);
INSERT INTO image_category (id,image_id,category_id) VALUES (11,70,19);
INSERT INTO image_category (id,image_id,category_id) VALUES (12,35,10);
INSERT INTO image_category (id,image_id,category_id) VALUES (13,64,5);
INSERT INTO image_category (id,image_id,category_id) VALUES (14,79,10);
INSERT INTO image_category (id,image_id,category_id) VALUES (15,11,11);
INSERT INTO image_category (id,image_id,category_id) VALUES (16,73,3);
INSERT INTO image_category (id,image_id,category_id) VALUES (17,2,18);
INSERT INTO image_category (id,image_id,category_id) VALUES (18,71,12);
INSERT INTO image_category (id,image_id,category_id) VALUES (19,52,6);
INSERT INTO image_category (id,image_id,category_id) VALUES (20,96,1);
INSERT INTO image_category (id,image_id,category_id) VALUES (21,56,3);
INSERT INTO image_category (id,image_id,category_id) VALUES (22,16,4);
INSERT INTO image_category (id,image_id,category_id) VALUES (23,33,4);
INSERT INTO image_category (id,image_id,category_id) VALUES (24,18,11);
INSERT INTO image_category (id,image_id,category_id) VALUES (25,18,18);
INSERT INTO image_category (id,image_id,category_id) VALUES (26,27,16);
INSERT INTO image_category (id,image_id,category_id) VALUES (27,82,7);
INSERT INTO image_category (id,image_id,category_id) VALUES (28,10,6);
INSERT INTO image_category (id,image_id,category_id) VALUES (29,31,19);
INSERT INTO image_category (id,image_id,category_id) VALUES (30,37,17);
INSERT INTO image_category (id,image_id,category_id) VALUES (31,62,9);
INSERT INTO image_category (id,image_id,category_id) VALUES (32,53,20);
INSERT INTO image_category (id,image_id,category_id) VALUES (33,44,5);
INSERT INTO image_category (id,image_id,category_id) VALUES (34,96,2);
INSERT INTO image_category (id,image_id,category_id) VALUES (35,94,9);
INSERT INTO image_category (id,image_id,category_id) VALUES (36,87,19);
INSERT INTO image_category (id,image_id,category_id) VALUES (37,7,18);
INSERT INTO image_category (id,image_id,category_id) VALUES (38,66,5);
INSERT INTO image_category (id,image_id,category_id) VALUES (39,25,9);
INSERT INTO image_category (id,image_id,category_id) VALUES (40,51,6);
INSERT INTO image_category (id,image_id,category_id) VALUES (41,1,4);
INSERT INTO image_category (id,image_id,category_id) VALUES (42,93,8);
INSERT INTO image_category (id,image_id,category_id) VALUES (43,94,11);
INSERT INTO image_category (id,image_id,category_id) VALUES (44,95,20);
INSERT INTO image_category (id,image_id,category_id) VALUES (45,93,16);
INSERT INTO image_category (id,image_id,category_id) VALUES (46,37,18);
INSERT INTO image_category (id,image_id,category_id) VALUES (47,95,13);
INSERT INTO image_category (id,image_id,category_id) VALUES (48,69,24);
INSERT INTO image_category (id,image_id,category_id) VALUES (49,85,4);
INSERT INTO image_category (id,image_id,category_id) VALUES (50,11,9);
INSERT INTO image_category (id,image_id,category_id) VALUES (51,73,9);
INSERT INTO image_category (id,image_id,category_id) VALUES (52,25,8);
INSERT INTO image_category (id,image_id,category_id) VALUES (53,74,9);
INSERT INTO image_category (id,image_id,category_id) VALUES (54,64,19);
INSERT INTO image_category (id,image_id,category_id) VALUES (55,78,17);
INSERT INTO image_category (id,image_id,category_id) VALUES (56,90,16);
INSERT INTO image_category (id,image_id,category_id) VALUES (57,17,9);
INSERT INTO image_category (id,image_id,category_id) VALUES (58,93,17);
INSERT INTO image_category (id,image_id,category_id) VALUES (59,73,24);
INSERT INTO image_category (id,image_id,category_id) VALUES (60,33,1);
INSERT INTO image_category (id,image_id,category_id) VALUES (61,13,12);
INSERT INTO image_category (id,image_id,category_id) VALUES (62,53,2);
INSERT INTO image_category (id,image_id,category_id) VALUES (63,74,10);
INSERT INTO image_category (id,image_id,category_id) VALUES (64,20,15);
INSERT INTO image_category (id,image_id,category_id) VALUES (65,85,25);
INSERT INTO image_category (id,image_id,category_id) VALUES (66,65,19);
INSERT INTO image_category (id,image_id,category_id) VALUES (67,34,2);
INSERT INTO image_category (id,image_id,category_id) VALUES (68,95,22);
INSERT INTO image_category (id,image_id,category_id) VALUES (69,34,9);
INSERT INTO image_category (id,image_id,category_id) VALUES (70,11,24);
INSERT INTO image_category (id,image_id,category_id) VALUES (71,70,15);
INSERT INTO image_category (id,image_id,category_id) VALUES (72,52,8);
INSERT INTO image_category (id,image_id,category_id) VALUES (73,44,3);
INSERT INTO image_category (id,image_id,category_id) VALUES (74,19,17);
INSERT INTO image_category (id,image_id,category_id) VALUES (75,37,20);
INSERT INTO image_category (id,image_id,category_id) VALUES (76,83,15);
INSERT INTO image_category (id,image_id,category_id) VALUES (77,15,8);
INSERT INTO image_category (id,image_id,category_id) VALUES (78,37,15);
INSERT INTO image_category (id,image_id,category_id) VALUES (79,18,11);
INSERT INTO image_category (id,image_id,category_id) VALUES (80,22,17);
INSERT INTO image_category (id,image_id,category_id) VALUES (81,20,15);
INSERT INTO image_category (id,image_id,category_id) VALUES (82,34,12);
INSERT INTO image_category (id,image_id,category_id) VALUES (83,21,16);
INSERT INTO image_category (id,image_id,category_id) VALUES (84,36,24);
INSERT INTO image_category (id,image_id,category_id) VALUES (85,47,13);
INSERT INTO image_category (id,image_id,category_id) VALUES (86,83,6);
INSERT INTO image_category (id,image_id,category_id) VALUES (87,80,12);
INSERT INTO image_category (id,image_id,category_id) VALUES (88,8,17);
INSERT INTO image_category (id,image_id,category_id) VALUES (89,45,8);
INSERT INTO image_category (id,image_id,category_id) VALUES (90,1,3);
INSERT INTO image_category (id,image_id,category_id) VALUES (91,71,18);
INSERT INTO image_category (id,image_id,category_id) VALUES (92,39,13);
INSERT INTO image_category (id,image_id,category_id) VALUES (93,94,8);
INSERT INTO image_category (id,image_id,category_id) VALUES (94,43,3);
INSERT INTO image_category (id,image_id,category_id) VALUES (95,61,19);
INSERT INTO image_category (id,image_id,category_id) VALUES (96,67,12);
INSERT INTO image_category (id,image_id,category_id) VALUES (97,86,1);
INSERT INTO image_category (id,image_id,category_id) VALUES (98,87,4);
INSERT INTO image_category (id,image_id,category_id) VALUES (99,1,19);
INSERT INTO image_category (id,image_id,category_id) VALUES (100,44,18);

INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (1,"1","0");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (2,"1","1");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (3,"1","0");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (4,"1","0");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (5,"0","1");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (6,"1","1");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (7,"1","0");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (8,"1","0");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (9,"0","0");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (10,"0","0");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (11,"0","0");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (12,"1","0");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (13,"1","1");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (14,"0","1");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (15,"1","0");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (16,"0","1");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (17,"1","0");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (18,"0","0");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (19,"0","1");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (20,"0","1");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (21,"0","1");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (22,"1","0");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (23,"1","1");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (24,"0","1");
INSERT INTO preference (user_id,dark_mode,grid_view) VALUES (25,"1","0");

INSERT INTO `order` (id, user_id) VALUES (1,1);
INSERT INTO `order` (id, user_id) VALUES (2,5);
INSERT INTO `order` (id, user_id) VALUES (3,15);
INSERT INTO `order` (id, user_id) VALUES (4,12);
INSERT INTO `order` (id, user_id) VALUES (5,7);
INSERT INTO `order` (id, user_id) VALUES (6,13);
INSERT INTO `order` (id, user_id) VALUES (7,17);
INSERT INTO `order` (id, user_id) VALUES (8,25);
INSERT INTO `order` (id, user_id) VALUES (9,22);
INSERT INTO `order` (id, user_id) VALUES (10,16);

INSERT INTO `order_image`(id, order_id, image_id) VALUES (1, 1, 5);
INSERT INTO `order_image`(id, order_id, image_id) VALUES (2, 2, 4);
INSERT INTO `order_image`(id, order_id, image_id) VALUES (3, 3, 3);
INSERT INTO `order_image`(id, order_id, image_id) VALUES (4, 4, 2);
INSERT INTO `order_image`(id, order_id, image_id) VALUES (5, 5, 1);
INSERT INTO `order_image`(id, order_id, image_id) VALUES (6, 6, 5);
INSERT INTO `order_image`(id, order_id, image_id) VALUES (7, 7, 4);
INSERT INTO `order_image`(id, order_id, image_id) VALUES (8, 8, 3);
INSERT INTO `order_image`(id, order_id, image_id) VALUES (9, 9, 2);
INSERT INTO `order_image`(id, order_id, image_id) VALUES (10, 10, 1);

### TRIGGER ###
CREATE TRIGGER price_increase
AFTER INSERT ON order_image
FOR EACH ROW
UPDATE image
SET price = price +1
WHERE price < 10;

### SELECT ###
# 1.
SELECT *
FROM image;

# 2.
SELECT *
FROM order_image;

# 3.
SELECT SUM(price)
FROM image;

# 4.
SELECT COUNT(image.id)
FROM image;

# 5.
SELECT REVERSE(image.name)
FROM image
WHERE id = 24;

# 6. Payment information
SELECT UPPER(u.username), u.email, u.pan, u.cvv
FROM user u
ORDER BY u.id
LIMIT 3;

# 7. Shows which user bought which image on what order and for what price
SELECT o.user_id, o.id AS order_id, oi.image_id, i.price
FROM `order` o
INNER JOIN order_image oi ON o.id = oi.order_id
LEFT JOIN image i ON oi.image_id = i.id;

# 8. Name of category and name of image.
SELECT c.name, i.name
FROM category c
INNER JOIN image_category ic ON c.id = ic.category_id
LEFT JOIN image i ON ic.image_id = i.id
ORDER BY i.id;

# 9. List of uploaders and their ids, and their uploads and upload ids
SELECT u.id, u.username, i.id, i.name
FROM user u
INNER JOIN image i on u.id = i.user_id
GROUP BY u.id;

# 10. All images in the abstract category
SELECT i.id, i.name, c.name FROM image i
INNER JOIN image_category ic on i.id = ic.image_id
INNER JOIN category c on ic.category_id = c.id
WHERE c.name = 'abstract';

### UPDATE ###
# 1.
UPDATE image
SET price = 5
WHERE id = 1;

# 2.
UPDATE preference
SET dark_mode = 1
WHERE user_id = 3;

# 3.
UPDATE image
SET price = 5
WHERE price < 5
  AND id <= 25;

# 4.
UPDATE category
SET name = CONCAT("sci", "fi")
WHERE id = 9;

# 5.
UPDATE image
SET is_public = 0
WHERE id <25
AND price >= 5;

### DELETE ###
# 1.
DELETE FROM image
WHERE id = 1;

# 2.
DELETE FROM user
WHERE id = 3;

# 3.
DELETE FROM category
WHERE name="scifi";

# 4.
DELETE FROM user
ORDER BY id
LIMIT 3;

# 5.
DELETE category
FROM image_category
INNER JOIN category
WHERE category.id = image_category.image_id
AND category.name = "architectural"
AND category.id <= 75;