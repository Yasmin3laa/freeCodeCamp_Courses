# 🗃️ Hash Table

A simple Python implementation of a **Hash Table** data structure.

This project demonstrates how to store, retrieve, and remove key-value pairs using a custom hash function.

The implementation also handles **hash collisions** by storing multiple keys inside the same hashed bucket.

---

## 📌 Features

* 🔑 Generate hash values from string keys
* ➕ Add key-value pairs
* 🔍 Look up values by key
* 🗑️ Remove key-value pairs
* 💥 Handle hash collisions
* 📦 Store data using Python dictionaries
* 🧠 Practice basic Hash Table concepts

---

## 🧠 How It Works

The `HashTable` class uses a dictionary called `collection` to store the data.

```python
class HashTable:
    def __init__(self):
        self.collection = {}
```

Each key is converted into a numeric hash using the custom `hash()` method.

```python
def hash(self, string):
    return sum(ord(char) for char in string)
```

The hash value is then used as a bucket in the main collection.

---

## 🔢 Hash Function

The hash function calculates a numeric value by adding the Unicode value of every character in the string.

For example:

```python
hash("cat")
```

The calculation is conceptually:

```text
c → 99
a → 97
t → 116

99 + 97 + 116 = 312
```

So:

```text
hash("cat") → 312
```

The function uses Python's built-in `ord()` function to get the Unicode value of each character.

---

## 💥 Collision Handling

Different strings can sometimes produce the same hash value.

For example, because the hash function simply adds character values, two different keys can potentially generate the same hash.

Instead of overwriting existing data, this implementation stores the keys inside a nested dictionary:

```text
collection
│
└── hashed_key
    │
    ├── key → value
    └── key → value
```

This allows multiple keys with the same hash to coexist.

---

# 🏗️ HashTable Class

## `__init__()`

Creates an empty hash table.

```python
table = HashTable()
```

The internal collection starts as:

```python
{}
```

---

## `hash(string)`

Generates a numeric hash from a string.

```python
hashed_key = table.hash("name")
```

The method uses:

```python
sum(ord(char) for char in string)
```

---

## `add(key, value)`

Adds a key-value pair to the hash table.

```python
table.add("name", "Yasmin")
```

The key is first converted into a hash value.

If the hash bucket doesn't exist, a new dictionary is created:

```python
if hashed_key not in self.collection:
    self.collection[hashed_key] = {}
```

Then the key and value are stored inside that bucket.

---

## `lookup(key)`

Retrieves the value associated with a key.

```python
table.lookup("name")
```

If the key exists, its value is returned.

If it doesn't exist:

```python
None
```

is returned.

---

## `remove(key)`

Removes a key-value pair from the hash table.

```python
table.remove("name")
```

The method calculates the key's hash and then removes the key from the corresponding bucket.

---

# 🧪 Example Usage

```python
table = HashTable()

table.add("name", "Yasmin")
table.add("age", 20)
table.add("language", "Python")

print(table.lookup("name"))
print(table.lookup("age"))
print(table.lookup("language"))

table.remove("age")

print(table.lookup("age"))
```

Example output:

```text
Yasmin
20
Python
None
```

---

## 🔄 CRUD Operations

The project demonstrates the basic CRUD operations:

| Operation  | Method     | Description                           |
| ---------- | ---------- | ------------------------------------- |
| **Create** | `add()`    | Add a key-value pair                  |
| **Read**   | `lookup()` | Retrieve a value                      |
| **Update** | `add()`    | Replace the value for an existing key |
| **Delete** | `remove()` | Remove a key-value pair               |

For example, updating a value can be done by adding the same key again:

```python
table.add("name", "Yasmin")
table.add("name", "Python Developer")

print(table.lookup("name"))
```

Output:

```text
Python Developer
```

---

## 🛠️ Technologies

* **Python 3**
* Dictionaries
* Classes and Objects
* Functions and Methods
* Unicode / `ord()`
* Hashing concepts
* Collision handling
* Key-value data structures

No external libraries are required.

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/Yasmin3laa/freeCodeCamp_Courses.git
```

### 2. Navigate to the project

```bash
cd freeCodeCamp_Courses/Python/projects/Hash_Table
```

### 3. Run the program

```bash
python main.py
```

---

## 📂 Project Structure

```text
Hash_Table/
│
├── main.py
└── README.md
```

---

## 📚 Concepts Practiced

This project helps practice:

* Hash tables
* Hash functions
* Key-value storage
* Dictionaries
* Nested dictionaries
* Classes and objects
* Methods
* CRUD operations
* Collision handling
* Unicode character values
* Data lookup and removal

---

## 🎯 Learning Goal

The goal of this project is to understand the basic structure and behavior of a **Hash Table**, including how keys can be transformed into hash values and how those values can be used to efficiently organize key-value data.

---

## 📄 License

This project was created for educational purposes as part of the freeCodeCamp Python curriculum.
