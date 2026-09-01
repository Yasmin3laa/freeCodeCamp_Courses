# 🌌 Celestial Bodies Database

A PostgreSQL relational database project completed as part of the **Relational Databases** curriculum on **freeCodeCamp**.

The project models different types of celestial bodies — including galaxies, stars, planets, moons, and comets — and demonstrates fundamental relational database concepts using **PostgreSQL and SQL**.

---

## 📚 About the Project

The **Celestial Bodies Database** is one of the hands-on projects included in the **freeCodeCamp Relational Databases** curriculum.

The purpose of the project is to practice designing and managing a relational database while working with:

* PostgreSQL
* SQL
* Relational database design
* Primary keys
* Foreign keys
* Unique constraints
* One-to-many relationships
* Data types
* PostgreSQL sequences
* Data integrity
* SQL queries and `JOIN` operations

The database represents a simplified model of the universe and establishes relationships between galaxies, stars, planets, and moons.

---

## 🎓 freeCodeCamp Curriculum

This project was completed as part of:

**freeCodeCamp — Relational Databases**

🔗 https://www.freecodecamp.org/learn/relational-databases/

The project was built as a practical exercise to apply the relational database concepts covered throughout the curriculum.

---

## 🗂️ Database Overview

The database contains five main tables:

| Table    | Description                                       |
| -------- | ------------------------------------------------- |
| `galaxy` | Stores information about galaxies                 |
| `star`   | Stores information about stars and their galaxies |
| `planet` | Stores information about planets and their stars  |
| `moon`   | Stores information about moons and their planets  |
| `comet`  | Stores information about comets                   |

The main hierarchy is:

```text
Galaxy
   │
   └── Star
        │
        └── Planet
             │
             └── Moon

Comet
   └── Independent entity
```

---

## 🔗 Entity Relationships

The database uses foreign keys to establish relationships between celestial bodies.

```text
Galaxy 1 ────────< Star
                     │
                     │
                     ▼
                  Planet
                     │
                     │
                     ▼
                   Moon
```

### Relationships

* One **galaxy** can contain many **stars**.
* One **star** can have many **planets**.
* One **planet** can have many **moons**.
* **Comets** are stored independently and do not reference the other tables.

### Foreign Keys

```text
star.galaxy_id
        ↓
galaxy.galaxy_id

planet.star_id
        ↓
star.star_id

moon.planet_id
        ↓
planet.planet_id
```

---

## 🗄️ Database Schema

### 🌌 Galaxy

The `galaxy` table stores information about galaxies.

| Column                     | Type         | Description                     |
| -------------------------- | ------------ | ------------------------------- |
| `galaxy_id`                | INTEGER      | Primary key                     |
| `name`                     | VARCHAR(100) | Galaxy name                     |
| `age_in_millions_of_years` | INTEGER      | Estimated age                   |
| `distance_from_earth`      | INTEGER      | Distance from Earth             |
| `weight`                   | NUMERIC      | Estimated weight/mass           |
| `galaxy_types`             | TEXT         | Galaxy classification           |
| `is_spherical`             | BOOLEAN      | Whether the galaxy is spherical |
| `has_life`                 | BOOLEAN      | Whether life is recorded        |

---

### ⭐ Star

The `star` table stores information about stars and the galaxies they belong to.

| Column                     | Type         | Description                      |
| -------------------------- | ------------ | -------------------------------- |
| `star_id`                  | INTEGER      | Primary key                      |
| `name`                     | VARCHAR(100) | Star name                        |
| `age_in_millions_of_years` | INTEGER      | Estimated age                    |
| `distance_from_earth`      | INTEGER      | Distance from Earth              |
| `weight`                   | NUMERIC      | Estimated weight/mass            |
| `is_spherical`             | BOOLEAN      | Whether the star is spherical    |
| `has_life`                 | BOOLEAN      | Whether life is recorded         |
| `galaxy_id`                | INTEGER      | Foreign key referencing `galaxy` |

Relationship:

```text
Galaxy 1 ────────< Star
```

---

### 🪐 Planet

The `planet` table stores information about planets and the stars they orbit.

| Column                     | Type         | Description                     |
| -------------------------- | ------------ | ------------------------------- |
| `planet_id`                | INTEGER      | Primary key                     |
| `name`                     | VARCHAR(100) | Planet name                     |
| `age_in_millions_of_years` | INTEGER      | Estimated age                   |
| `distance_from_earth`      | INTEGER      | Distance from Earth             |
| `weight`                   | NUMERIC      | Estimated weight/mass           |
| `planet_types`             | TEXT         | Planet classification           |
| `is_spherical`             | BOOLEAN      | Whether the planet is spherical |
| `has_life`                 | BOOLEAN      | Whether life is recorded        |
| `star_id`                  | INTEGER      | Foreign key referencing `star`  |

Relationship:

```text
Star 1 ────────< Planet
```

---

### 🌙 Moon

The `moon` table stores information about moons and the planets they orbit.

| Column                     | Type         | Description                      |
| -------------------------- | ------------ | -------------------------------- |
| `moon_id`                  | INTEGER      | Primary key                      |
| `name`                     | VARCHAR(100) | Moon name                        |
| `age_in_millions_of_years` | INTEGER      | Estimated age                    |
| `distance_from_earth`      | INTEGER      | Distance from Earth              |
| `weight`                   | NUMERIC      | Estimated weight/mass            |
| `is_spherical`             | BOOLEAN      | Whether the moon is spherical    |
| `has_life`                 | BOOLEAN      | Whether life is recorded         |
| `planet_id`                | INTEGER      | Foreign key referencing `planet` |

Relationship:

```text
Planet 1 ────────< Moon
```

---

### ☄️ Comet

The `comet` table stores information about comets.

| Column              | Type         | Description                  |
| ------------------- | ------------ | ---------------------------- |
| `comet_id`          | INTEGER      | Primary key                  |
| `name`              | VARCHAR(100) | Comet name                   |
| `has_tail`          | BOOLEAN      | Whether the comet has a tail |
| `distance_from_sun` | NUMERIC      | Distance from the Sun        |

Comets are modeled as independent entities and do not have foreign-key relationships with the other tables.

---

## 📊 Database Contents

The database contains sample records for each type of celestial body:

| Entity      | Records |
| ----------- | ------: |
| 🌌 Galaxies |       6 |
| ⭐ Stars     |       6 |
| 🪐 Planets  |      12 |
| 🌙 Moons    |      20 |
| ☄️ Comets   |       3 |
| **Total**   |  **47** |

---

## 🌌 Sample Galaxies

The database includes:

* Milky Way
* Andromeda
* Triangulm
* Whirlpool
* Sombrero
* Large Magellanic Cloud

---

## ⭐ Sample Stars

The database includes:

* Sun
* Sirius
* Betelgeuse
* Rigel
* Polaris
* Vega

---

## 🪐 Sample Planets

The database includes:

* Earth
* Mars
* Jupiter
* Mercury
* Venus
* Saturn
* Uranus
* Neptune
* Kepler-22b
* Proxima b
* Gliese 581g
* HD 209458 b

---

## 🌙 Sample Moons

The database includes moons such as:

* Moon
* Phobos
* Deimos
* Io
* Europa
* Ganymede
* Callisto
* Titan
* Rhea
* Iapetus
* Dione
* Triton
* Nereid

---

## ☄️ Sample Comets

The database includes:

* Halley
* Hale-Bopp
* Encke

---

## 🔐 Database Constraints

The project uses several PostgreSQL constraints to maintain data integrity.

### Primary Keys

Each table has a primary key:

```text
galaxy.galaxy_id
star.star_id
planet.planet_id
moon.moon_id
comet.comet_id
```

These uniquely identify records within each table.

### Unique Constraints

The `name` column is unique in each table:

```text
galaxy.name
star.name
planet.name
moon.name
comet.name
```

This prevents duplicate names within the same entity type.

### Foreign Key Constraints

The database enforces relationships using foreign keys:

```sql
star.galaxy_id
    REFERENCES galaxy(galaxy_id);

planet.star_id
    REFERENCES star(star_id);

moon.planet_id
    REFERENCES planet(planet_id);
```

These constraints help maintain **referential integrity** between related records.

---

## ⚙️ PostgreSQL Sequences

The database uses PostgreSQL sequences for generating primary-key values.

The following sequences are included:

```text
galaxy_galaxy_id_seq
star_star_id_seq
planet_planet_id_seq
moon_moon_id_seq
comet_comet_id_seq
```

Each sequence is associated with its corresponding table's primary-key column.

---

## 🛠️ Technologies Used

* **PostgreSQL**
* **SQL**
* Relational Database Design
* Primary & Foreign Keys
* Unique Constraints
* PostgreSQL Sequences
* SQL `JOIN`
* Relational Data Modeling

---

## 🚀 Getting Started

### Prerequisites

To run this project locally, you need:

* PostgreSQL
* PostgreSQL client tools such as `psql`
* A PostgreSQL user with permission to create databases

---

### 1. Clone the Repository

```bash
git clone https://github.com/Yasmin3laa/celestial-bodies-database.git
```

Navigate to the project directory:

```bash
cd celestial-bodies-database
```

---

### 2. Restore the Database

The repository contains the PostgreSQL database dump:

```text
universe.sql
```

You can restore it using:

```bash
psql -U postgres -f universe.sql
```

Depending on your PostgreSQL configuration, you may need to specify the appropriate username, host, or port.

---

### 3. Connect to the Database

After restoring the database:

```bash
psql -U postgres -d universe
```

---

### 4. List the Tables

Inside PostgreSQL, run:

```sql
\dt
```

You should see:

```text
comet
galaxy
moon
planet
star
```

---

## 🔎 Example SQL Queries

### Get all galaxies

```sql
SELECT *
FROM galaxy;
```

---

### Find all planets orbiting the Sun

```sql
SELECT planet.name
FROM planet
JOIN star
    ON planet.star_id = star.star_id
WHERE star.name = 'Sun';
```

---

### Find all moons belonging to Earth

```sql
SELECT moon.name
FROM moon
JOIN planet
    ON moon.planet_id = planet.planet_id
WHERE planet.name = 'Earth';
```

---

### Find all stars in the Milky Way

```sql
SELECT star.name
FROM star
JOIN galaxy
    ON star.galaxy_id = galaxy.galaxy_id
WHERE galaxy.name = 'Milky Way';
```

---

### Find planets and their stars

```sql
SELECT
    planet.name AS planet,
    star.name AS star
FROM planet
JOIN star
    ON planet.star_id = star.star_id;
```

---

### Find moons with their planets and stars

```sql
SELECT
    moon.name AS moon,
    planet.name AS planet,
    star.name AS star
FROM moon
JOIN planet
    ON moon.planet_id = planet.planet_id
JOIN star
    ON planet.star_id = star.star_id;
```

---

## 🧠 Concepts Demonstrated

This project demonstrates practical knowledge of:

* Relational database design
* Entity relationships
* Database schema creation
* Primary keys
* Foreign keys
* Unique constraints
* Referential integrity
* One-to-many relationships
* PostgreSQL data types
* PostgreSQL sequences
* `INSERT` statements
* `SELECT` queries
* `JOIN` operations
* `WHERE` filtering
* Database restoration
* Structured relational data modeling

---

## 🎯 Learning Objectives

Through this project, I practiced how to:

1. Design a relational database schema.
2. Create tables and define their columns.
3. Choose appropriate SQL data types.
4. Create primary keys for unique identification.
5. Establish relationships using foreign keys.
6. Enforce uniqueness with constraints.
7. Insert and manage structured relational data.
8. Query related information using SQL `JOIN`s.
9. Work with PostgreSQL sequences.
10. Restore and interact with a PostgreSQL database.

---

## 📁 Project Structure

```text
celestial-bodies-database/
│
├── universe.sql
│
└── README.md
```

### `universe.sql`

Contains the PostgreSQL database dump, including:

* Database creation
* Table definitions
* Sequences
* Default values
* Sample data
* Primary-key constraints
* Unique constraints
* Foreign-key constraints

### `README.md`

Provides documentation for the project, database structure, relationships, setup instructions, and example queries.

---

## 🎓 Certification Context

This project was completed as part of the **freeCodeCamp Relational Databases** curriculum.

It represents hands-on practice with PostgreSQL and SQL as part of the process of learning relational database concepts.

**Course:** Relational Databases
**Platform:** freeCodeCamp

🔗 https://www.freecodecamp.org/learn/relational-databases/

---

## 👩‍💻 Author

**Yasmine Alaa**

GitHub:
https://github.com/Yasmin3laa

Repository:
https://github.com/Yasmin3laa/celestial-bodies-database

---

## ⭐ Acknowledgements

This project was completed as part of the **Relational Databases** curriculum provided by **freeCodeCamp**.

Thanks to freeCodeCamp for providing practical, project-based exercises for learning SQL, PostgreSQL, and relational database design.

---

## 📄 License

This project was created for **educational and portfolio purposes** as part of the freeCodeCamp Relational Databases curriculum.
