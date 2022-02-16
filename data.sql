INSERT INTO animals (
      name
    , date_of_birth
    , escape_attempts
    , neutered
    , weight_kg
  ) VALUES (
    'Agumon'
    , '2-3-2020'
    , 0
    , TRUE
    , 10.23
  );
  INSERT INTO animals (
      name
    , date_of_birth
    , escape_attempts
    , neutered
    , weight_kg
  ) VALUES (
    'Gabumon'
    , '11-15-2018'
    , 2
    , TRUE
    , 8
  );
  INSERT INTO animals (
      name
    , date_of_birth
    , escape_attempts
    , neutered
    , weight_kg
  ) VALUES (
    'Pikachu'
    , '1-7-2021'
    , 1
    , FALSE
    , 15.04
  );
  INSERT INTO animals (
      name
    , date_of_birth
    , escape_attempts
    , neutered
    , weight_kg
  ) VALUES (
    'Devimon'
    , '5-12-2017'
    , 5
    , TRUE
    , 11
  );

  INSERT INTO animals (
       name
       , date_of_birth
       , escape_attempts
       , neutered
       , weight_kg
   ) VALUES ('Charmander', 'feb/8/20', 0, FALSE, -11);


   INSERT INTO animals (
       name
       , date_of_birth
       , escape_attempts
       , neutered
       , weight_kg
   ) VALUES ('Plantmon', 'nov/15/22', 2, TRUE, -5.7);

   INSERT INTO animals (
       name
       , date_of_birth
       , escape_attempts
       , neutered
       , weight_kg
   ) VALUES ('Squirtle', 'apr/2/93', 3, FALSE, -12.13);


   INSERT INTO animals (
       name
       , date_of_birth
       , escape_attempts
       , neutered
       , weight_kg
   ) VALUES ('Angemon', 'jun/12/2005', 1, TRUE, -45);


   INSERT INTO animals (
       name
       , date_of_birth
       , escape_attempts
       , neutered
       , weight_kg
   ) VALUES ('Boarmon', 'jun/07/2005', 7, TRUE, 20.4);


   INSERT INTO animals (
       name
       , date_of_birth
       , escape_attempts
       , neutered
       , weight_kg
   ) VALUES ('Blossom', 'oct/13/1998', 3, TRUE, 17); 

   INSERT INTO owners (full_name,age)
     VALUES ('Sam Smith',34);

   INSERT INTO owners (full_name,age)
     VALUES ('Jennifer Orwell',19);

   INSERT INTO owners (full_name,age)
     VALUES ('Bob',45);

   INSERT INTO owners (full_name,age)
     VALUES ('Melody Pond',77);

   INSERT INTO owners (full_name,age)
     VALUES ('Dean Winchester',14);

   INSERT INTO owners (full_name,age)
     VALUES ('Jodie Whittaker',38);


   INSERT INTO species ("name")
     VALUES ('Digimon');

   INSERT INTO species ("name")
     VALUES ('Pokemon');

   UPDATE animals
   SET species_id = 1
   WHERE animals.name ~'[A-Za-z]+mon';

   UPDATE animals
   SET species_id = 2
   WHERE animals.species_id IS null;


   UPDATE animals
   SET owner_id = owners.id
   FROM owners
   WHERE animals.name = 'Agumon'
     AND owners.full_name = 'Sam Smith';


   UPDATE animals
   SET owner_id = owners.id
   FROM owners
   WHERE animals.name = 'Gabumon'
     AND owners.full_name = 'Jennifer Orwell'
     OR animals.name = 'Pikachu'
     AND owners.full_name = 'Jennifer Orwell';


   UPDATE animals
   SET owner_id = owners.id
   FROM owners
   WHERE animals.name = 'Devimon'
     AND owners.full_name = 'Bob'
     OR animals.name = 'Plantmon'
     AND owners.full_name = 'Bob';


   UPDATE animals
   SET owner_id = owners.id
   FROM owners
   WHERE animals.name = 'Charmander'
     AND owners.full_name = 'Melody Pond'
     OR animals.name = 'Squirtle'
     AND owners.full_name = 'Melody Pond'
     OR animals.name = 'Blossom'
     AND owners.full_name = 'Melody Pond';


   UPDATE animals
   SET owner_id = owners.id
   FROM owners
   WHERE animals.name = 'Angemon'
     AND owners.full_name = 'Dean Winchester'
     OR animals.name = 'Boarmon'
     AND owners.full_name = 'Dean Winchester';