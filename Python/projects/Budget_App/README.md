# 💰 Budget App

A Python budget management application built as part of the **freeCodeCamp Python curriculum**.

The project uses Object-Oriented Programming to create budget categories, track deposits and withdrawals, transfer funds between categories, check available funds, and generate a spending percentage chart.

---

## 📌 Features

* 💵 Create budget categories
* ➕ Deposit money
* 💸 Withdraw money
* 🔄 Transfer money between categories
* 💰 Check the current balance
* 📋 Display the complete transaction ledger
* 📊 Generate a spending chart showing the percentage spent by category

---

## 🧠 How It Works

The application is built around the `Category` class.

Each category contains:

* A category name
* A ledger containing deposits and withdrawals

Example:

```python
food = Category("Food")
```

The ledger stores transactions as dictionaries:

```python
{
    "amount": 1000,
    "description": "deposit"
}
```

Withdrawals are stored as negative amounts.

---

## 🏗️ Category Class

### `__init__(name)`

Creates a new budget category.

```python
food = Category("Food")
```

---

### `deposit(amount, description='')`

Adds money to the category.

```python
food.deposit(1000, "deposit")
```

---

### `withdraw(amount, description='')`

Withdraws money if enough funds are available.

```python
food.withdraw(105.55)
```

Returns:

* `True` if the withdrawal succeeds
* `False` if there are insufficient funds

---

### `get_balance()`

Calculates and returns the current balance.

```python
food.get_balance()
```

---

### `transfer(amount, category)`

Transfers money from one category to another.

```python
food.transfer(100, clothing)
```

The transaction is recorded in both categories.

---

### `check_funds(amount)`

Checks whether the category has enough money for a withdrawal.

```python
food.check_funds(100)
```

Returns `True` or `False`.

---

### `__str__()`

Returns a formatted representation of the category's ledger.

Example:

```text
***************Food***************
deposit                  1000.00
                         -105.55
Total: 894.45
```

---

# 📊 Spending Chart

The `create_spend_chart()` function generates a vertical chart showing the percentage of total withdrawals spent in each category.

Example:

```python
print(create_spend_chart([food, clothing, auto]))
```

Output:

```text
Percentage spent by category
100|          
 90|          
 80|          
 70|          
 60|          
 50| o        
 40| o        
 30| o  o     
 20| o  o  o  
 10| o  o  o  
  0| o  o  o  
    -----------
     F  C  A
     o  l  u
     o  o  t
     d  t  o
     i  h
     n  i
     g  n
        g
```

The percentages are rounded down to the nearest 10%.

---

## 🧪 Example Usage

```python
food = Category("Food")
food.deposit(1000, "deposit")
food.withdraw(105.55)

clothing = Category("Clothing")
clothing.deposit(500)
clothing.withdraw(33.40)

auto = Category("Auto")
auto.deposit(1000)
auto.withdraw(10)

print(create_spend_chart([food, clothing, auto]))
```

---

## 🛠️ Technologies

* **Python 3**
* Object-Oriented Programming
* Classes and Objects
* Dictionaries
* Lists
* Loops
* Conditional Statements
* String Formatting
* Functions

No external libraries are required.

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/Yasmin3laa/freeCodeCamp_Courses.git
```

### 2. Navigate to the project

```bash
cd freeCodeCamp_Courses/Python/projects/Budget_App
```

### 3. Run the program

```bash
python main.py
```

---

## 📂 Project Structure

```text
Budget_App/
│
├── main.py
└── README.md
```

---

## 📚 Concepts Practiced

This project helped practice:

* Defining and using Python classes
* Creating objects from classes
* Instance attributes
* Instance methods
* Working with lists and dictionaries
* Dictionary manipulation
* Calculating balances
* Conditional logic
* Iterating through nested data
* String formatting and alignment
* Building formatted text output
* Working with percentages
* Implementing a chart using text characters

---

## 🎯 Project Goal

The main goal of this project is to practice **Object-Oriented Programming in Python** by building a practical budget tracking system.

It is part of the **Scientific Computing with Python** curriculum from freeCodeCamp.

---

## 📄 License

This project was created for educational purposes as part of the freeCodeCamp Python curriculum.
