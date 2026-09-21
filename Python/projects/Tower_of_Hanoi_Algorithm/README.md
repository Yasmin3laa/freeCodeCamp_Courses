# Tower of Hanoi Algorithm

A Python implementation of the **Tower of Hanoi** algorithm.

## 📌 Description

The Tower of Hanoi is a classic recursive problem involving three rods:

* **A** — Source rod
* **B** — Auxiliary rod
* **C** — Target rod

The goal is to move all disks from rod **A** to rod **C** while following these rules:

1. Only one disk can be moved at a time.
2. A larger disk cannot be placed on top of a smaller disk.
3. All disks start on rod `A`.
4. All disks should finish on rod `C`.

## 🧠 How It Works

The solution uses **recursion**.

For `n` disks, the algorithm:

1. Moves `n - 1` disks from the source rod to the auxiliary rod.
2. Moves the largest disk from the source rod to the target rod.
3. Moves the `n - 1` disks from the auxiliary rod to the target rod.

The minimum number of moves required is:

```text
2^n - 1
```

For example:

* 1 disk → 1 move
* 2 disks → 3 moves
* 3 disks → 7 moves
* 4 disks → 15 moves

## 📂 Project Structure

```text
Tower_of_Hanoi_Algorithm/
│
├── main.py
└── README.md
```

## ▶️ Running the Project

Make sure Python is installed, then run:

```bash
python main.py
```

The main function is:

```python
hanoi_solver(n)
```

It receives the number of disks and returns the state of all three rods after every move.

## 💻 Example

For:

```python
hanoi_solver(2)
```

The states are:

```text
[2, 1] [] []
[2] [] [1]
[] [] [2, 1]
```

Each line represents:

```text
A B C
```

So the first line:

```text
[2, 1] [] []
```

means:

* Rod A contains disks `2, 1`
* Rod B is empty
* Rod C is empty

After the final move:

```text
[] [] [2, 1]
```

all disks have been successfully moved to rod C.

## 🔍 Implementation

The solver initializes the rods:

```python
rods = {
    'A': list(range(n, 0, -1)),
    'B': [],
    'C': []
}
```

The recursive function:

```python
def move_disks(disks, source, target, auxiliary):
```

handles the disk movements.

The `record_state()` function saves the current state of all three rods after each move.

## ⏱️ Complexity

### Time Complexity

```text
O(2^n)
```

The number of moves grows exponentially with the number of disks.

### Space Complexity

```text
O(n)
```

The recursive call stack can reach a depth of `n`.

## 🎯 Purpose

This project demonstrates:

* Recursion
* Functions
* Lists
* Dictionaries
* Nested functions
* Stack-like operations using `append()` and `pop()`
* Algorithmic problem solving

## 📚 Course

This project is part of the **freeCodeCamp Python projects** collection.

---

**Author:** Yasmine 3laa
