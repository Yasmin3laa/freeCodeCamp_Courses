# 📐 Polygon Area Calculator

A Python project that implements **Rectangle** and **Square** classes to perform geometric calculations.

This project demonstrates **Object-Oriented Programming (OOP)** concepts such as classes, inheritance, method overriding, and reusable methods.

It is part of the **freeCodeCamp Scientific Computing with Python** curriculum.

---

## 📌 Features

The project provides methods to:

* 📏 Calculate the area
* 📐 Calculate the perimeter
* 📊 Calculate the diagonal
* 🖼️ Generate an ASCII representation of a shape
* 🔲 Calculate how many times one shape can fit inside another
* 🔄 Change width and height
* ⬜ Create a square using inheritance from `Rectangle`

---

## 🏗️ Classes

### `Rectangle`

The `Rectangle` class represents a rectangle using its width and height.

```python
rect = Rectangle(10, 5)
```

---

### `Square`

The `Square` class inherits from `Rectangle`.

Since all sides of a square are equal, the constructor uses the same value for both width and height.

```python
sq = Square(9)
```

Inheritance allows the `Square` class to reuse the functionality of the `Rectangle` class while providing square-specific behavior.

---

# 🔧 Rectangle Methods

### `set_width(width)`

Changes the rectangle's width.

```python
rect.set_width(16)
```

---

### `set_height(height)`

Changes the rectangle's height.

```python
rect.set_height(8)
```

---

### `get_area()`

Returns the area of the rectangle.

**Formula:**

```text
Area = width × height
```

Example:

```python
rect.get_area()
```

---

### `get_perimeter()`

Returns the perimeter.

**Formula:**

```text
Perimeter = 2 × (width + height)
```

Example:

```python
rect.get_perimeter()
```

---

### `get_diagonal()`

Calculates the diagonal using the Pythagorean theorem.

**Formula:**

```text
Diagonal = √(width² + height²)
```

The `math` module is used to calculate the square root.

```python
rect.get_diagonal()
```

---

### `get_picture()`

Returns an ASCII representation of the rectangle using `*` characters.

Example:

```python
rect = Rectangle(5, 3)
print(rect.get_picture())
```

Output:

```text
*****
*****
*****
```

If either dimension is greater than `50`, the method returns:

```text
Too big for picture.
```

---

### `get_amount_inside(shape)`

Calculates how many times another shape can fit inside the current rectangle without rotating it.

```python
rect.get_amount_inside(sq)
```

The calculation uses integer division:

```python
(self.width // shape.width) * (self.height // shape.height)
```

---

### `__str__()`

Returns a readable description of the rectangle.

```text
Rectangle(width=10, height=5)
```

---

# ⬜ Square Methods

The `Square` class inherits from `Rectangle`.

### `__init__(side)`

Creates a square where width and height are both equal to the given side.

```python
sq = Square(9)
```

---

### `set_side(side)`

Updates both width and height to the same value.

```python
sq.set_side(4)
```

---

### `set_width(width)`

For a square, changing the width also changes the height.

```python
sq.set_width(6)
```

---

### `set_height(height)`

For a square, changing the height also changes the width.

```python
sq.set_height(6)
```

---

### `__str__()`

Returns a readable description of the square.

```text
Square(side=4)
```

---

# 🧬 Inheritance

One of the main concepts demonstrated in this project is **inheritance**.

```python
class Square(Rectangle):
```

This means `Square` inherits methods and attributes from `Rectangle`.

The `Square` class then overrides some methods to ensure that its width and height always remain equal.

For example:

```python
def set_side(self, side):
    self.width = side
    self.height = side
```

This allows a square to maintain its defining property:

```text
width = height
```

---

# 🧪 Example Usage

```python
rect = Rectangle(10, 5)

print(rect.get_area())

rect.set_height(3)

print(rect.get_perimeter())
print(rect)
print(rect.get_picture())

sq = Square(9)

print(sq.get_area())

sq.set_side(4)

print(sq.get_diagonal())
print(sq)
print(sq.get_picture())

rect.set_height(8)
rect.set_width(16)

print(rect.get_amount_inside(sq))
```

---

## 📤 Example Output

```text
50
26
Rectangle(width=10, height=3)
**********
**********
**********
81
5.656854249492381
Square(side=4)
****
****
****
****
8
```

---

## 🛠️ Technologies

* **Python 3**
* Object-Oriented Programming
* Classes
* Objects
* Inheritance
* Method overriding
* Lists and arithmetic operations
* `math` module
* String formatting

No external libraries are required.

---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/Yasmin3laa/freeCodeCamp_Courses.git
```

### 2. Navigate to the project

```bash
cd freeCodeCamp_Courses/Python/projects/Polygon_Area_Calculator
```

### 3. Run the program

```bash
python main.py
```

---

## 📂 Project Structure

```text
Polygon_Area_Calculator/
│
├── main.py
└── README.md
```

---

## 📚 Concepts Practiced

This project helped practice:

* Defining Python classes
* Creating objects
* Constructors with `__init__`
* Instance attributes
* Instance methods
* Inheritance
* Method overriding
* Using `super()`
* Working with the `math` module
* Mathematical formulas
* String formatting
* ASCII art generation
* Code reuse through inheritance

---

## 🎯 Learning Goal

The main goal of this project is to strengthen **Object-Oriented Programming concepts in Python**, especially inheritance and method overriding, by building reusable geometric shape classes.

---

## 📄 License

This project was created for educational purposes as part of the freeCodeCamp Python curriculum.
