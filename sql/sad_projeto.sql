CREATE SCHEMA IF NOT EXISTS arms_permits;
SET search_path TO arms_permits;

CREATE TABLE IF NOT EXISTS DimDate (
    date_id SERIAL PRIMARY KEY,
    year INT NOT NULL,
    month INT NOT NULL,
    semester INT NOT NULL,
    trimester INT NOT NULL,
    CONSTRAINT uq_year_month UNIQUE (year, month)
);

	
CREATE TABLE IF NOT EXISTS DimLocation (
    location_id SERIAL PRIMARY KEY,
    uf CHAR(2) NOT NULL,
    city VARCHAR(100) NOT NULL,
    region VARCHAR(50) NOT null,
    CONSTRAINT uq_location UNIQUE (uf, city)
);

CREATE TABLE IF NOT EXISTS DimPermitType (
    permit_type_id SERIAL PRIMARY KEY,
    type_name VARCHAR(50) NOT null,
    CONSTRAINT uq_type_name UNIQUE (type_name)
);

CREATE TABLE IF NOT EXISTS DimStatus (
    status_id SERIAL PRIMARY KEY,
    status_name VARCHAR(50) NOT null,
    CONSTRAINT uq_status_name UNIQUE (status_name)
);

CREATE TABLE IF NOT EXISTS DimScope (
    scope_id SERIAL PRIMARY KEY,
    scope_name VARCHAR(50) NOT null,
    CONSTRAINT uq_scope_name UNIQUE (scope_name)
);

CREATE TABLE IF NOT EXISTS DimWeapon (
    weapon_id SERIAL PRIMARY KEY,
    species VARCHAR(50),
    brand VARCHAR(100),
    caliber VARCHAR(30),
    CONSTRAINT uq_weapon UNIQUE (species, brand, caliber)
);


CREATE TABLE IF NOT EXISTS DimGender (
    gender_id SERIAL PRIMARY KEY,
    gender VARCHAR(15) NOT null,
    CONSTRAINT uq_gender UNIQUE (gender)
);

CREATE TABLE IF NOT EXISTS FactPermits (
    date_id INT REFERENCES DimDate(date_id),
    location_id INT REFERENCES DimLocation(location_id),
    permit_type_id INT REFERENCES DimPermitType(permit_type_id),
    status_id INT REFERENCES DimStatus(status_id),
    scope_id INT REFERENCES DimScope(scope_id),
    weapon_id INT REFERENCES DimWeapon(weapon_id),
    gender_id INT REFERENCES DimGender(gender_id),
    total INT NOT NULL,
    PRIMARY KEY (
        date_id,
        location_id,
        permit_type_id,
        status_id,
        scope_id,
        weapon_id,
        gender_id
    )
);
