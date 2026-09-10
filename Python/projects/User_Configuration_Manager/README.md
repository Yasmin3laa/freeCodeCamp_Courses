# ⚙️ Python User Settings Manager

A simple Python project for managing user settings using a Python dictionary.

The project provides basic **CRUD operations**:

* ➕ Add a new setting
* ✏️ Update an existing setting
* 🗑️ Delete a setting
* 👀 View all current settings

It also normalizes setting keys and values by converting them to lowercase.

---

## 📌 Features

### Add Settings

Adds a new key-value setting to the dictionary.

If the setting already exists, the function prevents overwriting it.

```python
add_setting(settings, ("Language", "English"))
```

Output:

```text
Setting 'language' added with value 'english' successfully!
```

---

### Update Settings

Updates the value of an existing setting.

If the setting does not exist, an error message is returned.

```python
update_setting(settings, ("Theme", "Light"))
```

Output:

```text
Setting 'theme' updated to 'light' successfully!
```

---

### Delete Settings

Removes a setting from the dictionary using its key.

```python
delete_setting(settings, "Volume")
```

Output:

```text
Setting 'volume' deleted successfully!
```

If the key doesn't exist:

```text
Setting not found!
```

---

### View Settings

Displays all currently stored settings.

```python
view_settings(settings)
```

Example output:

```text
Current User Settings:
Theme: light
Notifications: enabled
Language: english
```

If there are no settings:

```text
No settings available.
```

---

## 🧠 How It Works

The project uses a Python dictionary to store settings:

```python
test_settings = {
    "theme": "dark",
    "notifications": "enabled",
    "volume": "high"
}
```

Each setting follows this structure:

```text
key → value
```

For example:

```text
theme → dark
volume → high
```

The project uses four main functions:

| Function           | Purpose                    |
| ------------------ | -------------------------- |
| `add_setting()`    | Add a new setting          |
| `update_setting()` | Update an existing setting |
| `delete_setting()` | Delete a setting           |
| `view_settings()`  | Display all settings       |

---

## 🛠️ Technologies

* **Python 3**
* Python Dictionaries
* Functions
* Tuples
* String methods
* Conditional statements
* Loops

No external libraries are required.

---

## 🧪 Example

```python
test_settings = {
    "theme": "dark",
    "notifications": "enabled",
    "volume": "high"
}

print(add_setting(test_settings, ("Language", "English")))
print(add_setting(test_settings, ("Theme", "Light")))

print(update_setting(test_settings, ("Theme", "Light")))
print(update_setting(test_settings, ("Font", "Large")))

print(delete_setting(test_settings, "Volume"))
print(delete_setting(test_settings, "Font"))

print(view_settings(test_settings))
```

Expected output:

```text
Setting 'language' added with value 'english' successfully!
Setting 'theme' already exists! Cannot add a new setting with this name.
Setting 'theme' updated to 'light' successfully!
Setting 'font' does not exist! Cannot update a non-existing setting.
Setting 'volume' deleted successfully!
Setting not found!
Current User Settings:
Theme: light
Notifications: enabled
Language: english
```

---

## 📂 Project Structure

```text
python-settings-manager/
│
├── main.py
└── README.md
```

---

## 📚 Concepts Practiced

This project is useful for practicing fundamental Python concepts such as:

* Dictionary manipulation
* Functions and parameters
* Tuples and unpacking
* `if / else` statements
* `for` loops
* String manipulation with `.lower()` and `.capitalize()`
* Dictionary methods
* CRUD-style operations
* Returning values from functions
