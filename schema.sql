CREATE DATABASE vet_clinic;

  CREATE TABLE animals (
      id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
      name VARCHAR(100),
      date_of_birth DATE,
      escape_attempts INTEGER,
      neutered BOOLEAN,
      weight_kg DECIMAL
  ); 