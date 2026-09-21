# freeCodeCamp Survey Form

A simple **Survey Form** built with HTML as part of the [freeCodeCamp Responsive Web Design](https://www.freecodecamp.org/) curriculum.

## 📌 Project Overview

This project is a survey form designed to collect basic information and feedback from users.

The form includes:

* Name
* Email
* Age
* Current role
* Recommendation choice
* Favorite freeCodeCamp feature
* Areas that could be improved
* Comments and suggestions
* Submit button

## 🛠️ Technologies Used

* HTML5

## 📂 Project Structure

```text
Survey_Form/
│
├── index.html
└── README.md
```

## 🧩 HTML Features Used

The project demonstrates the use of several HTML form elements:

### Headings and Paragraphs

```html
<h1 id="title">freeCodeCamp Survey Form</h1>
<p id="description">
  Thank you for taking the time to help us improve the platform
</p>
```

### Text Input

Used to collect the user's name:

```html
<input
  id="name"
  type="text"
  placeholder="Enter your name"
  required
/>
```

### Email Input

Used to collect the user's email address:

```html
<input
  id="email"
  type="email"
  placeholder="Enter your email"
  required
/>
```

### Number Input

Used to collect the user's age:

```html
<input
  id="number"
  type="number"
  placeholder="Age"
  min="10"
  max="99"
/>
```

### Select Dropdown

Used to select the user's current role:

```html
<select id="dropdown" name="role">
  <option selected disabled>Select Current Role</option>
  <option value="student">Student</option>
  <option value="full-time-job">Full Time Job</option>
  <option value="full-time-learner">Full Time Learner</option>
  <option value="prefer-not-to-say">Prefer not to say</option>
  <option value="other">Other</option>
</select>
```

### Radio Buttons

Used when the user should select one recommendation:

```html
<input
  type="radio"
  name="recommend"
  value="definitely"
  id="definitely"
/>

<input
  type="radio"
  name="recommend"
  value="maybe"
  id="maybe"
/>

<input
  type="radio"
  name="recommend"
  value="not-sure"
  id="not-sure"
/>
```

### Checkboxes

Used when the user can select multiple options:

```html
<input
  type="checkbox"
  value="front-end-projects"
  name="improve"
  id="front-end-projects"
/>
```

Several checkboxes are provided for different areas that could be improved.

### Textarea

Used to collect additional comments:

```html
<textarea placeholder="Enter your comments here..."></textarea>
```

### Submit Button

```html
<button type="submit" id="submit">Submit</button>
```

## ✅ Form Validation

The form uses built-in HTML validation for required fields:

```html
required
```

The email field uses:

```html
type="email"
```

The age field uses:

```html
min="10"
max="99"
```

These attributes allow the browser to perform basic validation without JavaScript.

## 🎯 Learning Goals

This project helps practice:

* HTML document structure
* Forms
* Labels and inputs
* `input` types
* Radio buttons
* Checkboxes
* Dropdown menus
* Textareas
* Form validation
* IDs and `for` attributes
* Semantic HTML elements

## 🚀 How to Run

1. Clone or download the repository.
2. Open the `Survey_Form` folder.
3. Open `index.html` in a web browser.

No server or additional dependencies are required.

## 📚 Part of freeCodeCamp

This project was created as part of the **Responsive Web Design** projects on freeCodeCamp.

The goal is to practice building forms using HTML and satisfy the project's required user stories and tests.

---

**Project:** Survey Form
**Technology:** HTML5
**Course:** freeCodeCamp Responsive Web Design
