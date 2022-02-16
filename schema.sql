CREATE DATABASE vet_clinic;

  CREATE TABLE animals (
      id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
      name VARCHAR(100),
      date_of_birth DATE,
      escape_attempts INTEGER,
      neutered BOOLEAN,
      weight_kg DECIMAL
  ); 

  ALTER TABLE animals
         ADD COLUMN species VARCHAR(100); 

CREATE TABLE owners (
         id int NOT NULL GENERATED ALWAYS AS IDENTITY,
         full_name varchar(100);
         age int;
     	CONSTRAINT owners_pk PRIMARY KEY (id)
     );

 CREATE TABLE species (
   id int NOT NULL GENERATED ALWAYS AS IDENTITY,
   name varchar(100);
   PRIMARY KEY(id)
 );

 ALTER TABLE animals DROP COLUMN species;
 ALTER TABLE animals ADD species_id int;
 ALTER TABLE animals ADD owner_id int;
 ALTER TABLE animals ADD CONSTRAINT animals_fk_1 FOREIGN KEY (owner_id) REFERENCES owners(id);
 ALTER TABLE animals ADD CONSTRAINT animals_fk_2 FOREIGN KEY (species_id) REFERENCES species(id);

 CREATE TABLE vets (
 id int NOT NULL GENERATED ALWAYS AS IDENTITY,
 name varchar(100) NULL,
 age int NULL,
 date_of_graduation date NULL,
 CONSTRAINT vets_pk PRIMARY KEY (id)
 ); 

 CREATE TABLE specializations (
 vet_id int NOT NULL,
 species_id int NOT NULL,
 CONSTRAINT specializations_pk PRIMARY KEY (vet_id, species_id),
 CONSTRAINT specializations_fk FOREIGN KEY (vet_id) REFERENCES vets(id) ON DELETE RESTRICT ON UPDATE CASCADE,
 CONSTRAINT specializations_fk_1 FOREIGN KEY (species_id) REFERENCES species(id) ON DELETE RESTRICT ON UPDATE CASCADE
 );

 CREATE TABLE visits (
 "date" date NULL,
 vet_id int NULL,
 animal_id int NULL,
 CONSTRAINT visits_pk PRIMARY KEY (vet_id, animal_id),
 CONSTRAINT visits_fk_1 FOREIGN KEY (vet_id) REFERENCES vets(id) ON DELETE CASCADE ON UPDATE CASCADE,
 CONSTRAINT visits_fk FOREIGN KEY (animal_id) REFERENCES animals(id) ON DELETE CASCADE ON UPDATE CASCADE
 ); 